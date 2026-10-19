import Testing
import Device

@Test func cpuLookupCoversHardwareAndRegionalModels() {
    for definition in Device.all {
        #expect(definition.cpu != nil)
        for identifier in definition.identifiers {
            #expect(Device(identifier: identifier).cpu == definition.cpu)
        }
        for modelNumber in definition.modelNumbers {
            #expect(Device(modelNumber: modelNumber).cpu == definition.cpu)
        }
    }
}

@Test func cpuLookupWorksAcrossDeviceFamilies() {
    #expect(Device(identifier: "iPhone19,4").cpu == .a20Pro)
    #expect(Device(identifier: "iPhone1,1").cpu == .s5L8900)
    #expect(Device(identifier: "iPhone16,1").cpu == .a17Pro)
    #expect(Device(identifier: "iPad13,4").cpu == .m1)
    #expect(Device(identifier: "Watch7,1").cpu == .s9)
    #expect(Device(identifier: "AppleTV11,1").cpu == .a12Bionic)
    #expect(Device(identifier: "AudioAccessory5,1").cpu == .s5)
}

@Test func unknownCPUsAndSpecificationsRemainNil() {
    #expect(Device(identifier: "iPhone99,1").cpu == nil)
    #expect(Device(modelNumber: "A0000").cpu == nil)
    #expect(Device(identifier: "iPhone16,1", modelNumber: "A0000").cpu == nil)
    #expect(CPU.s5L8900.techNode == nil)
    #expect(CPU.s11.maxClockSpeed == nil)
    #expect(CPU.a14Bionic.l1DataCache == nil)
    #expect(CPU.a13Bionic.l1DataCache == nil)
    #expect(CPU.a13Bionic.l1InstructionCache == nil)
    #expect(CPU.a13Bionic.l2Cache == nil)
}

@Test func cpuSpecificationsPreserveExistingMappings() {
    #expect(CPU.a17Pro.description == "A17 Pro")
    #expect(CPU.a17Pro.maxClockSpeed == "3.78 GHz")
    #expect(CPU.a17Pro.techNode == "3 nm (N3B)")
    #expect(CPU.a19Pro.instructionSet == "ARMv9.2-A")
    #expect(CPU.a17Pro.neuralEngineTOPS == "35")
    #expect(CPU.a17Pro.neuralEngineCores == "16")
    #expect(CPU.a7.l1DataCache == "64 KB")
    #expect(CPU.a7.l1InstructionCache == "64 KB")
    #expect(CPU.a7.l2Cache == "1 MB")
    #expect(CPU.a7.l3Cache == "4 MB")
    #expect(CPU.a4.neuralEngineCores == nil)
    #expect(CPU.m1.neuralEngineCores == "16")
    #expect(CPU.m1.neuralEngineTOPS == "11")
    #expect(CPU.m1Ultra.neuralEngineCores == nil)
}
