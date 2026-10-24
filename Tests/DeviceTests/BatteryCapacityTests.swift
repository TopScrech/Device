import Testing
import Device

@Test func selectsESIMOnlyCapacityFromAModel() {
    let esim = Device(modelNumber: "A3256")
    let physicalSIM = Device(modelNumber: "A3523")
    #expect(esim.name == "iPhone 17 Pro")
    #expect(esim.isESIMOnly == true)
    #expect(esim.batteryCapacity?.milliampHours == 4252)
    #expect(physicalSIM.isESIMOnly == false)
    #expect(physicalSIM.batteryCapacity?.milliampHours == 3998)
    #expect(Device(modelNumber: "A3522").batteryCapacity == esim.batteryCapacity)
    #expect(Device(modelNumber: "A3524").batteryCapacity == physicalSIM.batteryCapacity)
    #expect(Device(modelNumber: "A3257").batteryCapacity?.milliampHours == 5088)
    #expect(Device(modelNumber: "A3526").batteryCapacity?.milliampHours == 4832)
}

@Test func ambiguousCapacityNeedsAModel() {
    let phone = Device(identifier: "iPhone18,1")
    #expect(phone.batteryCapacity == nil)
    #expect(phone.isESIMOnly == nil)
    #expect(phone.withModelNumber("A3256").batteryCapacity?.milliampHours == 4252)
    #expect(phone.withModelNumber("A3523").batteryCapacity?.milliampHours == 3998)
    #expect(phone.withModelNumber("A9999").batteryCapacity == nil)
    #expect(phone.withModelNumber("A3257").definition == nil)
}

@Test func duoHasTwoBatteries() {
    for phone in [Device(identifier: "iPhone19,4"), Device(modelNumber: "A3447")] {
        #expect(phone.isESIMOnly == true)
        #expect(phone.batteryCapacity?.batteryCount == 2)
        #expect(phone.batteryCapacity?.batteryMilliampHours == [2962, 1921])
        #expect(phone.batteryCapacity?.milliampHours == 4883)
        #expect(phone.batteryCapacity?.batteryWattHours == [11.567, 7.506])
        #expect(abs((phone.batteryCapacity?.wattHours ?? 0) - 19.073) < 0.000001)
    }
}

@Test func preservesCapacityUnitsAndMissingValues() {
    #expect(Device(identifier: "iPhone16,1").batteryCapacity?.milliampHours == 3274)
    #expect(Device(identifier: "iPhone16,1").batteryCapacity?.wattHours == 12.7)
    #expect(Device(identifier: "iPad15,7").batteryCapacity?.milliampHours == nil)
    #expect(Device(identifier: "iPad15,7").batteryCapacity?.wattHours == 28.93)
    #expect(Device(identifier: "Watch4,1").batteryCapacity?.milliampHours == 224.9)
    #expect(Device(identifier: "AudioAccessory6,1").batteryCapacity == nil)
    #expect(Device(identifier: "AppleTV14,1").batteryCapacity == nil)
    #expect(Device(identifier: "iPhone99,1").batteryCapacity == nil)
    #expect(Device(modelNumber: "A9999").batteryCapacity == nil)
}

@Test func selectsGPSAndCellularWatchCapacities() {
    #expect(Device(modelNumber: "A1858").batteryCapacity?.milliampHours == 262)
    #expect(Device(modelNumber: "A1860").batteryCapacity?.milliampHours == 279)
    #expect(Device(modelNumber: "A1859").batteryCapacity?.milliampHours == 342)
    #expect(Device(modelNumber: "A1861").batteryCapacity?.milliampHours == 352)
    #expect(Device(modelNumber: "A2722").batteryCapacity?.wattHours == 0.807)
    #expect(Device(modelNumber: "A2726").batteryCapacity?.wattHours == 0.944)
}

@Test func aModelLookupPreservesExistingFeatures() {
    let phone = Device(identifier: "A3256")
    #expect(phone.has(.magSafe))
    #expect(phone.dockConnector == .usbC)
    #expect(phone.bluetoothVersion == "6.0")
    #expect(Device(identifier: "AppleTV14,1").modelNumber == nil)
    #expect(Device(identifier: "AudioAccessory1,1").modelNumber == nil)
}

@Test func allCatalogueEntriesHaveUniqueValidAModels() {
    var models: Set<String> = []
    for definition in Device.all {
        #expect(!definition.modelNumbers.isEmpty)
        for model in definition.modelNumbers {
            #expect(model.first == "A")
            #expect(model.count == 5)
            #expect(model.dropFirst().allSatisfy { $0.isNumber })
            #expect(models.insert(model).inserted)
            #expect(Device(modelNumber: model).definition == definition)
        }
        if let esimModels = definition.eSIMOnlyModelNumbers {
            #expect(esimModels.isSubset(of: Set(definition.modelNumbers)))
        }
        #expect(Set(definition.batteryCapacityOverrides.keys).isSubset(of: Set(definition.modelNumbers)))
    }
}

@Test func individualWattHoursPreserveUnitsAndBatteryCount() {
    let capacity = BatteryCapacity(batteryWattHours: [11.567, 7.506])
    #expect(capacity.batteryCount == 2)
    #expect(capacity.batteryMilliampHours.isEmpty)
    #expect(capacity.milliampHours == nil)
    #expect(abs((capacity.wattHours ?? 0) - 19.073) < 0.000001)
    #expect(BatteryCapacity(wattHours: 12.7).batteryWattHours == [12.7])
    #expect(BatteryCapacity(milliampHours: 3274).batteryWattHours.isEmpty)
    #expect(BatteryCapacity().batteryWattHours.isEmpty)

    let aggregate = BatteryCapacity(batteryMilliampHours: [2962, 1921], wattHours: 19.073)
    #expect(aggregate.batteryWattHours.isEmpty)
    #expect(aggregate.wattHours == 19.073)
    #expect(aggregate.batteryCount == 2)
}
