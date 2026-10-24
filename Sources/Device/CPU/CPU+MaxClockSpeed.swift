extension CPU {
    public var maxClockSpeed: String? {
        switch self {
        case .a4: "0.8 - 1 GHz"
            
        case .a5: "0.8 - 1.2 GHz"
            
        case .a5X: "1 GHz"
        case .a6: "1.3 GHz"
        case .a6X: "1.4 GHz"
        case .a7: "1.4 - 1.5 GHz"
        case .a8: "1.51 GHz"
        case .a8X: "1.5 GHz"
        case .a9: "1.6 - 1.84 GHz"
        case .a9X: "2.26 GHz"
        case .a10Fusion: "0.396 - 2.37 GHz"
        case .a10XFusion: "2.38 GHz"
        case .a11Bionic: "2.376 GHz"
        case .a12Bionic: "2.496 GHz"
        case .a12XBionic: "2.496 GHz"
        case .a12ZBionic: "2.48 GHz"
        case .a13Bionic: "2.66 GHz"
        case .a14Bionic: "3.1 GHz"
            
        case .a15Bionic: "2.02 - 3.232 GHz"
            
        case .a16Bionic: "3.46 GHz"
            
        case .a17Pro: "3.78 GHz"
        case .a18: "4.044 GHz"
        case .a18Pro: "4.04 GHz"
            
        case .a19: "2.6 - 4.26 GHz"
        case .a19Pro: "2.6 - 4.26 GHz"
        case .a20Pro: "2.64 - 4.93 GHz"
            
        case .m1: "0.6 - 3.228 GHz"
        case .m2: "3.49 GHz"
        case .m3: "4.05 GHz"
        case .m4: "4.4 GHz"
        case .m5: "3.05 - 4.61 GHz"
            
        case .s1: "0.52 GHz"
        case .s1P: "0.52 GHz"
        case .s2: "0.78 GHz"
        case .s3: "0.78 (Estimated)" // -
        case .s4: "1.59 GHz"
        case .s5: "1.59 GHz"
        case .s6: "1.73 GHz"
        case .s7: "1.73 GHz"
        case .s8: "1.73 GHz"
        case .s9: "2.02 GHz"
        case .s10: "2.02 GHz"
        default: nil
        }
    }
}
