import Testing
import Device

@Test func preservesVoltageValuesAndPrecision() {
    #expect(Device(identifier: "iPhone14,2").voltage == "3.87 V")
    #expect(Device(identifier: "iPad5,3").voltage == "3.763 V")
    #expect(Device(identifier: "AppleTV6,2").voltage == "12 V")
    #expect(Device(identifier: "iPod9,1").voltage == "3.83 V")
    #expect(Device(identifier: "Watch3,1").voltage == "3.81 V (Cellular - 3.82 V)")
}

@Test func unknownVoltageRemainsNil() {
    for identifier in ["unknown", "iPhone99,1", "iPhone18,2", "iPhone19,4", "iPhone14,5"] {
        #expect(Device(identifier: identifier).voltage == nil)
    }
}

@Test func voltageResolvesForAllModelIdentifiers() {
    for definition in Device.all {
        for identifier in definition.identifiers + definition.modelNumbers {
            #expect(Device(identifier: identifier).voltage == definition.voltage)
        }
    }
    #expect(Device(identifier: "iPhone14,2", modelNumber: "A0000").voltage == nil)
}
