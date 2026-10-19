/// Hardware identified by its model identifier, such as `iPhone16,1`
public struct Device: Hashable, Sendable {
    public let identifier: String

    public init(identifier: String) {
        self.identifier = identifier
    }

    /// Known capabilities only — unrecognized models have an empty set
    public var capabilities: Set<Capability> {
        switch identifier {
        // iPhone 12 family
        case "iPhone13,1", "iPhone13,2", "iPhone13,3", "iPhone13,4",
             // iPhone 13 family
             "iPhone14,2", "iPhone14,3", "iPhone14,4", "iPhone14,5",
             // iPhone 14 family
             "iPhone14,7", "iPhone14,8", "iPhone15,2", "iPhone15,3",
             // iPhone 15 family
             "iPhone15,4", "iPhone15,5", "iPhone16,1", "iPhone16,2",
             // iPhone 16 family, excluding iPhone 16e
             "iPhone17,1", "iPhone17,2", "iPhone17,3", "iPhone17,4",
             // iPhone 17 family, iPhone Air and iPhone 17e
             "iPhone18,1", "iPhone18,2", "iPhone18,3", "iPhone18,4", "iPhone18,5",
             // iPhone 18 Pro and Pro Max, including the international variant
             "iPhone19,2", "iPhone19,3", "iPhone19,7",
             // iPhone Duo
             "iPhone19,4":
            [.magSafe]
        default:
            []
        }
    }

    public func has(_ capability: Capability) -> Bool {
        capabilities.contains(capability)
    }
}
