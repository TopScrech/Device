import Testing
import Device

@Test(arguments: [
    ("iPhone", "802.11b/g"),
    ("iPhone 3GS", "802.11b/g"),
    ("iPhone 4", "Wi-Fi 4 (802.11n)"),
    ("iPhone 5s", "Wi-Fi 4 (802.11n)"),
    ("iPhone 6", "Wi-Fi 5 (802.11ac)"),
    ("iPhone SE (1st generation)", "Wi-Fi 5 (802.11ac)"),
    ("iPhone XR", "Wi-Fi 5 (802.11ac)"),
    ("iPhone 11", "Wi-Fi 6 (802.11ax)"),
    ("iPhone SE (2nd generation)", "Wi-Fi 6 (802.11ax)"),
    ("iPhone SE (3rd generation)", "Wi-Fi 6 (802.11ax)"),
    ("iPhone 14 Pro Max", "Wi-Fi 6 (802.11ax)"),
    ("iPhone 15", "Wi-Fi 6 (802.11ax)"),
    ("iPhone 15 Plus", "Wi-Fi 6 (802.11ax)"),
    ("iPhone 15 Pro", "Wi-Fi 6E (802.11ax)"),
    ("iPhone 15 Pro Max", "Wi-Fi 6E (802.11ax)"),
    ("iPhone 16", "Wi-Fi 7 (802.11be)"),
    ("iPhone 16e", "Wi-Fi 6 (802.11ax)"),
    ("iPhone 17e", "Wi-Fi 6 (802.11ax)"),
    ("iPhone Duo", "Wi-Fi 7 (802.11be)"),
    ("iPad Air", "Wi-Fi 4 (802.11n)"),
    ("iPad mini 3", "Wi-Fi 4 (802.11n)"),
    ("iPad mini 4", "Wi-Fi 5 (802.11ac)"),
    ("iPad (9th generation)", "Wi-Fi 5 (802.11ac)"),
    ("iPad (10th generation)", "Wi-Fi 6 (802.11ax)"),
    ("iPad Air (5th generation)", "Wi-Fi 6 (802.11ax)"),
    ("iPad Pro 11-inch (3rd generation)", "Wi-Fi 6 (802.11ax)"),
    ("iPad Pro 11-inch (4th generation)", "Wi-Fi 6E (802.11ax)"),
    ("iPad Pro 13-inch (M4)", "Wi-Fi 6E (802.11ax)"),
    ("iPad Pro 13-inch (M5)", "Wi-Fi 7 (802.11be)"),
    ("iPad Air 11-inch (M3)", "Wi-Fi 6E (802.11ax)"),
    ("iPad Air 11-inch (M4)", "Wi-Fi 7 (802.11be)"),
    ("iPad mini (A20 Pro)", "Wi-Fi 7 (802.11be)"),
    ("iPod touch", "802.11b/g"),
    ("iPod touch (3rd generation)", "802.11b/g"),
    ("iPod touch (4th generation)", "Wi-Fi 4 (802.11n)"),
    ("iPod touch (5th generation)", "Wi-Fi 4 (802.11n)"),
    ("iPod touch (6th generation)", "Wi-Fi 5 (802.11ac)"),
    ("iPod touch (7th generation)", "Wi-Fi 5 (802.11ac)"),
    ("Apple TV HD", "Wi-Fi 5 (802.11ac)"),
    ("Apple TV 4K", "Wi-Fi 5 (802.11ac)"),
    ("Apple TV 4K (2nd generation)", "Wi-Fi 6 (802.11ax)"),
    ("Apple TV 4K (3rd generation)", "Wi-Fi 6 (802.11ax)"),
    ("HomePod", "Wi-Fi 5 (802.11ac)"),
    ("HomePod mini", "Wi-Fi 4 (802.11n)"),
    ("HomePod (2nd generation)", "Wi-Fi 4 (802.11n)")
])
func wifiGenerationBoundaries(name: String, expected: String) throws {
    let definition = try #require(Device.all.first { $0.name == name })
    #expect(definition.wifiVersion == expected)
}

@Test(arguments: Device.appleWatches)
func watchWiFiRemainsGenerationFour(definition: DeviceDefinition) {
    #expect(definition.wifiVersion == "Wi-Fi 4 (802.11n)")
}

@Test(arguments: Device.all)
func wifiIsMappedAndResolvesAcrossCatalogueIdentifiers(definition: DeviceDefinition) throws {
    let expected = try #require(definition.wifiVersion)
    for identifier in definition.identifiers {
        #expect(Device(identifier: identifier).wifiVersion == expected)
    }
    for modelNumber in definition.modelNumbers {
        #expect(Device(modelNumber: modelNumber).wifiVersion == expected)
    }
}

@Test(arguments: ["", "unknown", "iPhone99,1", "iPad99,1", "Watch99,1", "Mac14,2", "A9999"])
func unknownWiFiVersionsRemainNil(identifier: String) {
    #expect(Device(identifier: identifier).wifiVersion == nil)
}

@Test func customDefinitionsCanOmitWiFi() {
    let definition = DeviceDefinition(name: "Custom", identifiers: ["Custom1,1"], dockConnector: .unknown)
    #expect(definition.wifiVersion == nil)
}

@Test func wifiRejectsMismatchedModelNumbers() {
    #expect(Device(identifier: "iPhone16,1", modelNumber: "A1203").wifiVersion == nil)
}
