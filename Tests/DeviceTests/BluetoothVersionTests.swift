import Testing
import Device

@Test(arguments: ["iPhone19,4", "iPhone19,7", "iPad17,4"])
func supportsBluetoothSix(identifier: String) {
    #expect(Device(identifier: identifier).bluetoothVersion == "6.0")
}

@Test func preservesMappedVersions() {
    #expect(Device(identifier: "iPhone3,1").bluetoothVersion == "2.1 + EDR")
    #expect(Device(identifier: "iPad2,1").bluetoothVersion == "2.1")
    #expect(Device(identifier: "iPod5,1").bluetoothVersion == "4.0")
    #expect(Device(identifier: "iPod9,1").bluetoothVersion == "4.1")
    #expect(Device(identifier: "iPhone7,2").bluetoothVersion == "4.2")
    #expect(Device(identifier: "iPhone14,6").bluetoothVersion == "5.0")
    #expect(Device(identifier: "iPad13,18").bluetoothVersion == "5.2")
    #expect(Device(identifier: "iPhone18,5").bluetoothVersion == "5.3")
}

@Test func preservesWatchTVAndHomePodVersions() {
    #expect(Device(identifier: "Watch1,1").bluetoothVersion == "4.0")
    #expect(Device(identifier: "Watch3,3").bluetoothVersion == "4.2")
    #expect(Device(identifier: "Watch6,9").bluetoothVersion == "5.0")
    #expect(Device(identifier: "Watch8,1").bluetoothVersion == "5.3")
    #expect(Device(identifier: "AppleTV5,3").bluetoothVersion == "5.0")
    #expect(Device(identifier: "AppleTV6,2").bluetoothVersion == "4.0")
    #expect(Device(identifier: "AppleTV14,1").bluetoothVersion == "5.0")
    #expect(Device(identifier: "AudioAccessory6,1").bluetoothVersion == "5.0")
}

@Test(arguments: ["", "iPhone99,1", "iPhone1,1", "iPad1,1", "iPod1,1", "Mac14,2"])
func unmappedBluetoothVersionsStayUnknown(identifier: String) {
    #expect(Device(identifier: identifier).bluetoothVersion == nil)
}
