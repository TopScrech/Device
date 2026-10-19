extension CPU {
    public var l2Cache: String? {
        switch self {
        case .a4: "512 KB"
        case .a5: "1 MB"
        case .a5X: "1 MB"
        case .a6: "1 MB"
        case .a6X: "1 MB"
        case .a7: "1 MB"
        case .a8: "1 MB"
        case .a8X: "2 MB"
        case .a9: "3 MB"
        case .a9X: "3 MB"
        case .a10Fusion: "3 MB"
        case .a10XFusion: "8 MB"
        case .a11Bionic: "8 MB"
        case .a12Bionic: "8 MB"
        case .a12XBionic: "8 MB"
        case .a12ZBionic: "8 MB"
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
