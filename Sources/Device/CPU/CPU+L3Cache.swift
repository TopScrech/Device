extension CPU {
    public var l3Cache: String? {
        switch self {
        case .a4: nil
        case .a5: nil
        case .a5X: nil
        case .a6: nil
        case .a6X: nil
        case .a7: "4 MB"
        case .a8: "4 MB"
        case .a8X: "4 MB"
        case .a9: "4 MB"
        case .a9X: nil
        case .a10Fusion: "4 MB"
        case .a10XFusion: nil
        case .a11Bionic: nil
        case .a12Bionic: nil
        case .a12XBionic: nil
        case .a12ZBionic: nil
        case .a13Bionic: nil // ???
        case .a14Bionic: nil
        case .a15Bionic: nil
        case .a16Bionic: nil
        case .a17Pro: nil
        case .a18: nil
        case .a18Pro: nil
        case .m1: nil
        case .m2: nil
        case .m3: nil
        case .m4: nil
        case .s1: nil
        case .s1P: nil
        case .s2: nil
        case .s3: nil
        case .s4: nil
        case .s5: nil
        case .s6: nil
        case .s7: nil
        case .s8: nil
        case .s9: nil
        case .s10: nil
        default: nil
        }
    }
}
