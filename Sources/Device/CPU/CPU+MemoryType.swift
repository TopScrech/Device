extension CPU {
    public var memoryType: String? {
        switch self {
        case .a4: "DDR, LPDDR, LPDDR2"
            
        case .a5: "LPDDR2"
            
        case .a5X: "LPDDR2"
        case .a6: "LPDDR2"
        case .a6X: "LPDDR2"
        case .a7: "LPDDR3"
        case .a8: "LPDDR3"
        case .a8X: "LPDDR3"
        case .a9: "LPDDR4"
        case .a9X: "LPDDR4"
        case .a10Fusion: "LPDDR4"
        case .a10XFusion: "LPDDR4"
        case .a11Bionic: "LPDDR4, LPDDR4X"
        case .a12Bionic: "LPDDR4X"
        case .a12XBionic: "LPDDR4X"
        case .a12ZBionic: "LPDDR4X"
        case .a13Bionic: "LPDDR4X"
        case .a14Bionic: "LPDDR4X, LPDDR5"
            
        case .a15Bionic: "LPDDR4X, LPDDR5"
            
        case .a16Bionic: "LPDDR4X, LPDDR5"
            
        case .a17Pro: "LPDDR4X, LPDDR5"
        case .a18: "LPDDR5, LPDDR5X"
        case .a18Pro: "LPDDR5, LPDDR5X"
        case .a19: "LPDDR5X-8533"
        case .a19Pro: "LPDDR5X-9600 (8533 in the iPad Air)"
        case .a20Pro: "LPDDR5X"
            
        case .m1: "LPDDR4X 2133 MHz (Pro, Max, Ultra - LPDDR4X (3200 MHz))"
        case .m2: "LPDDR5"
        case .m3: "LPDDR5"
        case .m4: "LPDDR5" // Pro, Max, Ultra - ???
        case .m5: "LPDDR5X"
            
        case .s1: "LPDDR3"
        case .s1P: "LPDDR2, LPDDR3"
        case .s2: "LPDDR3, LPDDR4"
        case .s3: "LPDDR3, LPDDR4"
        case .s4: "LPDDR4, LPDDR4X"
        case .s5: "LPDDR4, LPDDR4X"
        case .s6: "LPDDR4X"
        case .s7: "LPDDR4X"
        case .s8: "LPDDR4X"
        case .s9: "LPDDR4X, LPDDR5"
        case .s10: "LPDDR4X, LPDDR5"
        default: nil
        }
    }
}
