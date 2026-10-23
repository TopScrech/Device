import Testing
import Device

@Test func preservesWaterResistanceMappings() {
    let iphone7 = Device(identifier: "iPhone9,1")
    #expect(iphone7.waterResistance == "IP67 (IEC 60529)")
    #expect(iphone7.waterResistanceDescription == "Up to 30 minutes and 1 meter deep")
    #expect(Device(identifier: "iPhone11,2").waterResistanceDescription == "Up to 30 minutes and 2 meters deep")
    #expect(Device(identifier: "iPhone12,3").waterResistanceDescription == "Up to 30 minutes and 4m deep")
    #expect(Device(identifier: "iPhone16,1").waterResistanceDescription == "Up to 30 minutes and 6m deep")
    #expect(Device(identifier: "Watch1,1").waterResistance == "IPX7 (IEC 60529)")
    #expect(Device(identifier: "Watch1,1").waterResistanceDescription == "Splash and water resistant")
    #expect(Device(identifier: "Watch6,18").waterResistance == "IP6X, ISO 22810:2010, EN13319")
    #expect(Device(identifier: "Watch6,18").waterResistanceDescription == "Up to 100m deep")
}

@Test func distinguishesUnratedFromUnmappedDevices() {
    #expect(Device(identifier: "iPhone8,1").waterResistance == "None")
    #expect(Device(identifier: "iPad13,4").waterResistanceDescription == "None")
    #expect(Device(identifier: "AppleTV11,1").waterResistance == "None")
    for identifier in ["unknown", "iPhone99,1"] {
        #expect(Device(identifier: identifier).waterResistance == nil)
        #expect(Device(identifier: identifier).waterResistanceDescription == nil)
    }
}

@Test func waterResistanceMatchesAcrossModelIdentifiers() {
    for definition in Device.all {
        for identifier in definition.identifiers + definition.modelNumbers {
            let device = Device(identifier: identifier)
            #expect(device.waterResistance == definition.waterResistance)
            #expect(device.waterResistanceDescription == definition.waterResistanceDescription)
        }
    }
    #expect(Device(identifier: "iPhone16,1", modelNumber: "A0000").waterResistance == nil)
}

@Test(arguments: ["iPhone19,4", "A3447", "A3719", "A3720", "A3721"])
func iphoneDuoWaterResistance(identifier: String) {
    let device = Device(identifier: identifier)
    #expect(device.waterResistance == "IP68 (IEC 60529)")
    #expect(device.waterResistanceDescription == "Up to 30 minutes and 6m deep")
}
