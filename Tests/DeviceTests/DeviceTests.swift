import Testing
import Device

@Test(arguments: ["iPhone13,1", "iPhone16,1", "iPhone18,5", "iPhone19,7", "iPhone19,4"])
func supportsMagSafe(identifier: String) {
    #expect(Device(identifier: identifier).has(.magSafe))
}

@Test(arguments: ["iPhone12,1", "iPhone14,6", "iPhone17,5", "iPad16,3", "Mac14,2"])
func doesNotSupportIPhoneMagSafe(identifier: String) {
    #expect(!Device(identifier: identifier).has(.magSafe))
}

@Test(arguments: ["", "unknown", "iPhone99,1"])
func preservesUnrecognizedIdentifiersWithoutAssumingCapabilities(identifier: String) {
    let device = Device(identifier: identifier)
    #expect(device.identifier == identifier)
    #expect(device.capabilities.isEmpty)
}
