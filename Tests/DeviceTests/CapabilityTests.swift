import Testing
import Device

@Test(arguments: ["iPhone10,1", "iPhone12,8", "iPhone14,6", "iPhone17,5", "iPhone18,5", "iPhone19,4", "Watch1,1", "Watch8,1"])
func receivesWirelessPower(identifier: String) {
    #expect(Device(identifier: identifier).has(.wirelessCharging))
}

@Test(arguments: ["iPhone8,4", "iPhone9,1", "iPad8,9", "iPad17,4", "iPod9,1", "AppleTV14,1", "AudioAccessory6,1"])
func doesNotReceiveWirelessPower(identifier: String) {
    #expect(!Device(identifier: identifier).has(.wirelessCharging))
}

@Test(arguments: ["iPhone13,1", "iPhone14,6", "iPhone17,5", "iPhone18,5", "iPhone19,4", "Watch7,12", "Watch8,1"])
func supports5GIncludingSEAndRedCap(identifier: String) {
    #expect(Device(identifier: identifier).has(.fiveG))
}

@Test(arguments: ["iPhone12,1", "iPhone12,8", "iPad12,2", "Watch6,18", "Watch7,11", "Watch7,13", "Watch7,14", "Watch7,17", "Watch7,18", "Watch8,2", "Watch8,3"])
func doesNotConfuseLTEWiFiOrGPSWith5G(identifier: String) {
    #expect(!Device(identifier: identifier).has(.fiveG))
}

@Test(arguments: ["iPhone15,2", "iPhone15,3", "iPhone15,4", "iPhone17,1", "iPhone18,4", "iPhone19,4"])
func hasDynamicIsland(identifier: String) {
    #expect(Device(identifier: identifier).has(.dynamicIsland))
}

@Test(arguments: ["iPhone14,7", "iPhone14,8", "iPhone14,6", "iPhone17,5", "iPhone18,5", "iPad17,4", "Watch8,1"])
func lacksDynamicIsland(identifier: String) {
    #expect(!Device(identifier: identifier).has(.dynamicIsland))
}

@Test(arguments: [
    ("iPad13,4", "iPad13,6"), ("iPad13,5", "iPad13,7"),
    ("iPad13,8", "iPad13,10"), ("iPad13,9", "iPad13,11"),
    ("iPad13,16", "iPad13,17"), ("iPad13,18", "iPad13,19"),
    ("iPad14,1", "iPad14,2"), ("iPad14,3", "iPad14,4"),
    ("iPad14,5", "iPad14,6"), ("iPad14,8", "iPad14,9"),
    ("iPad14,10", "iPad14,11"), ("iPad16,3", "iPad16,4"),
    ("iPad16,5", "iPad16,6"), ("iPad16,1", "iPad16,2"),
    ("iPad15,3", "iPad15,4"), ("iPad15,5", "iPad15,6"),
    ("iPad15,7", "iPad15,8"), ("iPad17,1", "iPad17,2"),
    ("iPad17,3", "iPad17,4"), ("iPad16,8", "iPad16,9"),
    ("iPad16,10", "iPad16,11"), ("Watch7,13", "Watch7,15"),
    ("Watch7,14", "Watch7,16"), ("Watch7,17", "Watch7,19"),
    ("Watch7,18", "Watch7,20"), ("Watch8,2", "Watch8,4"),
    ("Watch8,3", "Watch8,5")
])
func distinguishesCellularVariants(pair: (String, String)) {
    #expect(!Device(identifier: pair.0).has(.fiveG))
    #expect(Device(identifier: pair.1).has(.fiveG))
}

@Test(arguments: ["A2996", "A3359", "A3362", "A3463", "A3464", "A3326", "A3327", "A3328", "A3329", "A3452", "A3453", "A3586", "A3588"])
func resolvesRegionalCellularModels(modelNumber: String) {
    #expect(Device(modelNumber: modelNumber).has(.fiveG))
    #expect(Device(identifier: modelNumber).has(.fiveG))
}

@Test(arguments: ["A2993", "A3357", "A3360", "A3459", "A3461", "A3324", "A3325", "A3391", "A3392", "A3450", "A3451", "A3583", "A3585"])
func regionalWiFiAndGPSModelsDoNotInherit5G(modelNumber: String) {
    #expect(!Device(modelNumber: modelNumber).has(.fiveG))
}

@Test
func explicitModelNumberSelectsItsVariant() {
    let device = Device(identifier: "iPad17,4")
    #expect(device.has(.fiveG))
    #expect(!device.withModelNumber("A3360").has(.fiveG))
    #expect(device.withModelNumber("A3361").has(.fiveG))
    #expect(device.withModelNumber("A3326").capabilities.isEmpty)
    #expect(Device(identifier: "unknown", modelNumber: "A3361").capabilities.isEmpty)
}

@Test
func correctedWatchSE3SizesPreserveChargingWhileResolving5G() {
    for identifier in ["Watch7,13", "Watch7,15", "A3324", "A3326", "A3327", "A3391"] {
        let device = Device(identifier: identifier)
        #expect(device.name == "Apple Watch SE (3rd generation) 40mm")
        #expect(device.has(.wirelessCharging))
    }
    for identifier in ["Watch7,14", "Watch7,16", "A3325", "A3328", "A3329", "A3392"] {
        let device = Device(identifier: identifier)
        #expect(device.name == "Apple Watch SE (3rd generation) 44mm")
        #expect(device.has(.wirelessCharging))
    }
}

@Test
func capabilityOverridesReferenceCataloguedVariants() {
    for definition in Device.all {
        let identifiers = Set(definition.identifiers + definition.modelNumbers)
        #expect(Set(definition.capabilityOverrides.keys).isSubset(of: identifiers))
    }
}

@Test
func unknownModelsNeverAcquireNewCapabilities() {
    for identifier in ["", "unknown", "iPhone99,1", "iPad99,1", "Watch99,1", "A9999"] {
        #expect(Device(identifier: identifier).capabilities.isEmpty)
    }
}
