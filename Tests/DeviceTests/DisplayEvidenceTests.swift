import Foundation
import Testing
@testable import Device

@Test
func displayEvidenceCoversEveryModelAndEverySpecification() throws {
    let package = URL(fileURLWithPath: #filePath)
        .deletingLastPathComponent()
        .deletingLastPathComponent()
        .deletingLastPathComponent()
    let data = try Data(contentsOf: package.appending(path: "Documentation/display/Evidence.json"))
    let document = try #require(JSONSerialization.jsonObject(with: data) as? [String: Any])
    let records = try #require(document["devices"] as? [[String: Any]])
    let publisherGroups = try #require(document["publisherGroups"] as? [String: String])
    #expect(records.count == Device.all.count)
    #expect(Set(records.compactMap { $0["name"] as? String }) == Set(Device.all.map(\.name)))

    for definition in Device.all {
        let record = try #require(records.first { $0["name"] as? String == definition.name })
        #expect(record["identifiers"] as? [String] == definition.identifiers)
        #expect(record["modelNumbers"] as? [String] == definition.modelNumbers)
        #expect(record["lidar"] as? Bool == definition.capabilities.contains(.lidar))
        #expect(record["roundedDisplayCorners"] as? Bool == definition.capabilities.contains(.roundedDisplayCorners))

        let references = try #require(record["references"] as? [String: String])
        let evidence = try #require(record["evidence"] as? [String: [String]])
        for field in ["displayClassification", "resolution", "diagonal", "ppi", "aspectRatio", "roundedDisplayCorners", "lidar"] {
            let sources = try #require(evidence[field])
            let urls = try sources.map { try #require(references[$0]) }
            #expect(Set(urls).count >= 2, "\(definition.name): \(field) needs two sources")
            // Model mappings and screen constants from one library count as one source
            let publications = urls.map { url in
                publisherGroups.first { url.hasPrefix($0.key) }?.value ?? url
            }
            #expect(Set(publications).count >= 2)
            #expect(urls.allSatisfy { URL(string: $0)?.scheme == "https" })
        }

        let panels = try #require(record["displays"] as? [[String: Any]])
        let displays = try #require(definition.displays)
        #expect(panels.count == displays.count)
        for (panel, display) in zip(panels, displays) {
            #expect(panel["width"] as? Int == display.resolution.width)
            #expect(panel["height"] as? Int == display.resolution.height)
            #expect(panel["ppi"] as? Int == display.ppi)
            let diagonal = try #require(panel["diagonal"] as? Double)
            if panel["diagonalDerived"] as? Bool == true {
                #expect(display.diagonal == nil)
                #expect(abs(display.estimatedDiagonal - diagonal) < 0.0051)
            } else {
                #expect(display.diagonal == diagonal)
            }
        }
    }
}
