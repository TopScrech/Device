import Testing
import Device

@Test(arguments: ["iPad19,1", "iPad19,2", "A3595", "A3596", "A3597"])
func resolvesIPadMiniA20Pro(_ identifier: String) {
    let device = Device(identifier: identifier)
    #expect(device.name == "iPad mini (A20 Pro)")
    #expect(device.cpu == .a20Pro)
    #expect(device.announcementDate == .init(year: 2026, month: 10, day: 26))
    #expect(device.releaseDate == .init(year: 2026, month: 11, day: 6))
    #expect(device.waterResistance == "IP67 (IEC 60529)")
    #expect(device.waterResistanceDescription == "Dust tight; up to 30 minutes and 1 meter deep")
    #expect(device.bluetoothVersion == "6.0")
    #expect(device.dockConnector == .usbC)
    #expect(device.has(.roundedDisplayCorners))
    #expect(!device.has(.lidar))
    #expect(device.display?.resolution == .init(width: 1512, height: 2316))
    #expect(device.display?.diagonal == 8.5)
    #expect(device.display?.ppi == 326)
    #expect(device.display?.resolution.formattedAspectRatio == "1.53:1")
    #expect(device.has(.fiveG) == !["iPad19,1", "A3595"].contains(identifier))
}

@Test func resolvesStorageDependentNeuralEngine() {
    let device = Device(identifier: "iPad19,1")
    #expect(device.neuralEngineCores(storageGigabytes: 128) == "16")
    #expect(device.neuralEngineCores(storageGigabytes: 256) == "16")
    #expect(device.neuralEngineCores(storageGigabytes: 512) == "32")
    #expect(device.neuralEngineCores() == "16 or 32, depending on storage")
    #expect(device.neuralEngineCores(storageGigabytes: 1024) == nil)
    #expect(Device(identifier: "iPad16,1").neuralEngineCores() == "16")
    #expect(Device(identifier: "unknown").neuralEngineCores() == nil)
}

@Test func distinguishesMiniConnectivityAndBatteryVariants() {
    #expect(Device(identifier: "iPad19,1").batteryCapacity?.wattHours == 18.9)
    #expect(Device(identifier: "iPad19,1").batteryCapacity?.milliampHours == nil)
    #expect(Device(modelNumber: "A3595").isESIMOnly == false)
    #expect(Device(modelNumber: "A3596").isESIMOnly == true)
    #expect(Device(modelNumber: "A3597").isESIMOnly == true)
    #expect(Device(identifier: "iPad19,1").isESIMOnly == nil)
    #expect(Device(modelNumber: "A3595").batteryCapacity?.milliampHours == 4900)
    #expect(Device(modelNumber: "A3596").batteryCapacity?.milliampHours == 4900)
    #expect(Device(modelNumber: "A3597").batteryCapacity?.milliampHours == nil)
    #expect(Device(modelNumber: "A3597").batteryCapacity?.wattHours == 18.9)
}

@Test func formatsAspectRatiosRegardlessOfOrientation() {
    #expect(DisplayResolution(width: 2316, height: 1512).formattedAspectRatio == "1.53:1")
    #expect(DisplayResolution(width: 1512, height: 2316).aspectRatio == .init(width: 126, height: 193))
    #expect(DisplayResolution(width: 1080, height: 1920).formattedAspectRatio == "16:9")
    #expect(DisplayResolution(width: 2048, height: 2732).formattedAspectRatio == "4:3")
    #expect(DisplayResolution(width: 100, height: 100).formattedAspectRatio == "1:1")
}
