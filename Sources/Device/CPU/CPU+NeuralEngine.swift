// Sources
// https://lowendmac.com
// https://apple.fandom.com

extension CPU {
    public var neuralEngineTOPS: String? {
        switch self {
        case .a4, .a5, .a5X, .a6, .a6X, .a7, .a8, .a8X, .a9, .a9X, .a10Fusion, .a10XFusion: nil
            
        case .a11Bionic: "0.6"
        case .a12Bionic, .a12XBionic, .a12ZBionic: "5"
        case .a13Bionic: "6"
        case .a14Bionic: "11"
        case .a15Bionic: "15.8"
        case .a16Bionic: "17" // https://apple.fandom.com/wiki/Apple_A16
        case .a17Pro, .a18, .a18Pro: "35"
        case .a19: "35" // https://lowendmac.com/2025/apple-a19-specs
        case .a19Pro: "35" // https://lowendmac.com/2025/apple-a19-pro-specs
        case .a20Pro: nil
            
        case .m1: "11"
        case .m2: "15.8"
        case .m3: "18"
        case .m4: "38"
        case .m5: nil
            
        case .s1, .s1P, .s2, .s3, .s4, .s5, .s6, .s7, .s8, .s9, .s10, .s11: nil
        default: nil
        }
    }
    
    public var neuralEngineCores: String? {
        switch self {
        case .a4, .a5, .a5X, .a6, .a6X, .a7, .a8, .a8X, .a9, .a9X, .a10Fusion, .a10XFusion: nil
            
        case .a11Bionic: "2"
        case .a12Bionic, .a12XBionic,
                .a12ZBionic, .a13Bionic: "8"
        case .a14Bionic, .a15Bionic: "16"
        case .a16Bionic: "16" // https://apple.fandom.com/wiki/Apple_A16
        case .a17Pro, .a18, .a18Pro: "16"
            
        case .a19: "16" // https://lowendmac.com/2025/apple-a19-specs
        case .a19Pro: "16" // https://lowendmac.com/2025/apple-a19-pro-specs
        case .a20Pro: "32" // Dual 16-core arch
            
        case .m1, .m2, .m3: "16"
        case .m4: "16"
        case .m5: "16"
            
        case .s1, .s1P, .s2, .s3, .s4, .s5, .s6, .s7, .s8: nil
        case .s9, .s10, .s11: "4"
        default: nil
        }
    }
}
