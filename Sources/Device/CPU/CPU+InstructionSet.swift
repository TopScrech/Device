extension CPU {
    public var instructionSet: String? {
        switch self {
        case .a4: "ARMv7"
            
        case .a5: "ARMv7"
            
        case .a5X: "ARMv7"
        case .a6: "ARMv7-A"
        case .a6X: "ARMv7"
        case .a7: "ARMv8 (A32, A64)"
        case .a8: "ARMv8-A (A32, A64)"
        case .a8X: "ARMv8-A (A32, A64)"
        case .a9: "ARMv8-A (A32, A64)"
        case .a9X: "ARMv8-A (A32, A64)"
        case .a10Fusion: "ARMv8.1-A (A32, A64)"
        case .a10XFusion: "ARMv8.1-A (A32, A64)"
        case .a11Bionic: "ARMv8.2-A"
        case .a12Bionic: "ARMv8.3-A (A32, A64)"
        case .a12XBionic: "ARMv8.3-A (A32, A64)"
        case .a12ZBionic: "ARMv8.3-A (A32, A64)"
        case .a13Bionic: "ARMv8.4-A (A32, A64)"
        case .a14Bionic: "ARMv8.5-A (A32, A64)"
            
        case .a15Bionic: "ARMv8.6-A (A32, A64)"
            
        case .a16Bionic: "ARMv8.6-A (A32, A64)"
            
        case .a17Pro: "ARMv8.6-A (A32, A64)"
        case .a18: "ARMv9.2-A"
        case .a18Pro: "ARMv9.2-A"
        case .a19: "ARMv9.2-A"
        case .a19Pro: "ARMv9.2-A"
        case .a20Pro: "ARMv9.4-A"
            
        case .m1: "ARMv8.4-A"
        case .m2: "ARMv8.6-A"
        case .m3: "ARMv8.6-A"
        case .m4: "ARMv9.2-A"
        case .m5: "ARMv9.2-A"
            
        case .s1: "ARMv7k"
        case .s1P: "ARMv7"
        case .s2: "ARMv7"
        case .s3: "ARMv7"
        case .s4: "ARMv8.3-A (A32, A64)"
        case .s5: "ARMv8-A (A32, A64)"
        case .s6: "ARMv8.4-A (A32, A64)"
        case .s7: "ARMv8.4-A (A32, A64)"
        case .s8: "ARMv8.4-A (A32, A64)"
        case .s9: "ARMv8.6-A (A32, A64)"
        case .s10: "ARMv8.6-A (A32, A64)"
        case .s11: "ARMv9.4-A" // Like A20 Pro ???
        default: nil
        }
    }
}
