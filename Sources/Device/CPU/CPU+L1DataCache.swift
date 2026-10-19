extension CPU {
    public var l1DataCache: String? {
        switch self {
        case .a4: "32 KB"
        case .a5: "32 KB"
        case .a5X: "32 KB"
        case .a6: "32 KB"
        case .a6X: "32 KB"
        case .a7: "64 KB"
        case .a8: "64 KB"
        case .a8X: "64 KB"
        case .a9: "64 KB"
        case .a9X: "64 KB"
        case .a10Fusion: "64 KB"
        case .a10XFusion: "64 KB"
        case .a11Bionic: "64 KB"
        case .a12Bionic: "128 KB"
        case .a12XBionic: "128 KB"
        case .a12ZBionic: "128 KB"
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
