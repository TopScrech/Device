extension CPU {
    public var techNode: String? {
        switch self {
        case .a4: "45 nm"
            
        case .a5: "45-32 nm"
            
        case .a5X: "45 nm"
        case .a6: "32 nm"
        case .a6X: "32 nm"
            
        case .a7: "28 nm"
            
        case .a8: "20 nm"
        case .a8X: "20 nm"
        case .a9: "14/16 nm"
        case .a9X: "16 nm"
        case .a10Fusion: "16 nm"
        case .a10XFusion: "10 nm"
        case .a11Bionic: "10 nm"
        case .a12Bionic: "7 nm (N7)"
        case .a12XBionic: "7 nm (N7)"
        case .a12ZBionic: "7 nm (N7)"
        case .a13Bionic: "7 nm (N7P)"
        case .a14Bionic: "5 nm (N5)"
            
        case .a15Bionic: "5 nm (N5P)"
            
        case .a16Bionic: "4 nm (N4P)"
            
        case .a17Pro: "3 nm (N3B)"
            
        case .a18: "3 nm (N3E)"
            
        case .a18Pro: "3 nm (N3E)"
        case .a19: "3 nm (N3P)"
        case .a19Pro: "3 nm (N3P)"
            
        case .a20Pro: "2 nm"
            
        case .m1: "5 nm (N5)"
        case .m2: "5 nm (N5P)"
        case .m3: "3 nm (N3)"
        case .m4: "3 nm (N3E)"
        case .m5: "3 nm (N3P)"
        case .s1: "28 nm"
            
        case .s1P: "28 nm"
            
        case .s2: "16 nm"
        case .s3: "16 nm" // -
        case .s4: "7 nm (N7)"
        case .s5: "7 nm (N7)"
        case .s6: "7 nm (N7P)"
        case .s7: "7 nm (N7P)"
        case .s8: "7 nm (N7P)"
        case .s9: "5 nm (N5P)"
            
        case .s10: "4 nm (N4)"
            
        case .s11: "2 nm"
        default: nil
        }
    }
}
