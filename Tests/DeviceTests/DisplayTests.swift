import Testing
@testable import Device

@Test
func everyCataloguedModelHasAnExplicitDisplayClassification() {
    for definition in Device.all {
        #expect(definition.displays != nil, "Missing display classification: \(definition.name)")
        for identifier in definition.identifiers + definition.modelNumbers {
            let device = Device(identifier: identifier)
            #expect(device.displays == definition.displays)
            #expect(device.has(.lidar) == definition.capabilities.contains(.lidar))
            #expect(device.has(.roundedDisplayCorners) == definition.capabilities.contains(.roundedDisplayCorners))
        }
    }
}

@Test
func unknownAndScreenlessDevicesAreDistinct() {
    #expect(Device(identifier: "future-device").displays == nil)
    #expect(!Device(identifier: "future-device").has(.lidar))
    for definition in Device.appleTVs + Device.homePods {
        #expect(definition.displays == [])
        #expect(!definition.capabilities.contains(.lidar))
        #expect(!definition.capabilities.contains(.roundedDisplayCorners))
    }
}

@Test(arguments: ["iPhone13,3", "iPhone13,4", "iPad8,9", "iPad8,11", "iPad17,1", "iPad17,4"])
func lidarIsAvailableOnProPhonesAndTablets(identifier: String) {
    #expect(Device(identifier: identifier).has(.lidar))
}

@Test(arguments: ["iPhone12,3", "iPhone13,2", "iPhone19,4", "iPad8,1", "iPad13,17", "iPod9,1", "Watch8,1"])
func camerasAndOtherDepthSensorsDoNotImplyLidar(identifier: String) {
    #expect(!Device(identifier: identifier).has(.lidar))
}

@Test
func nativePanelsAreNotRenderBuffers() {
    #expect(Device(identifier: "iPhone7,1").display?.resolution == .init(width: 1080, height: 1920))
    #expect(Device(identifier: "iPad16,3").display?.resolution == .init(width: 1668, height: 2420))
    #expect(Device(identifier: "iPad16,3").display?.diagonal == 11.1)
    for identifier in ["iPod2,1", "iPod3,1", "iPhone1,1", "iPhone1,2", "iPhone2,1"] {
        #expect(Device(identifier: identifier).display?.ppi == 163)
        #expect(Device(identifier: identifier).display?.resolution == .init(width: 320, height: 480))
    }
}

@Test
func watchDiagonalIsAnExplicitEstimate() throws {
    let watch = try #require(Device(identifier: "Watch4,1").display)
    #expect(watch.diagonal == nil)
    #expect(watch.estimatedDiagonal > 1.56 && watch.estimatedDiagonal < 1.57)
    #expect(Device(identifier: "Watch4,1").has(.roundedDisplayCorners))
    #expect(!Device(identifier: "Watch3,1").has(.roundedDisplayCorners))
    #expect(Device(identifier: "Watch7,5").display?.ppi == 326)
}

@Test
func foldingDevicePreservesBothPanels() throws {
    let displays = try #require(Device(identifier: "iPhone19,4").displays)
    #expect(displays.map(\.role) == [.inner, .outer])
    #expect(displays.map(\.ppi) == [430, 460])
    #expect(displays.map(\.diagonal) == [7.6, 5.4])
    #expect(displays[0].resolution == .init(width: 1878, height: 2670))
    #expect(displays[1].resolution == .init(width: 1398, height: 2034))
}

@Test
func aspectRatiosRemainExactAndOrientationIndependent() {
    #expect(DisplayResolution(width: 1920, height: 1080).aspectRatio == .init(width: 16, height: 9))
    #expect(DisplayResolution(width: 640, height: 1136).aspectRatio == .init(width: 40, height: 71))
    #expect(DisplayResolution(width: 1668, height: 2420).aspectRatio == .init(width: 417, height: 605))
}
