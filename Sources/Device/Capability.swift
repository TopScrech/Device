public enum Capability: Hashable, Sendable {
    /// Built-in iPhone MagSafe magnetic wireless charging
    /// This does not describe Mac MagSafe power connectors or attached accessories
    case magSafe

    /// Receives power inductively, including Qi on iPhone and the Apple Watch magnetic charger
    /// Does not imply Qi compatibility or charging an accessory such as Apple Pencil
    case wirelessCharging

    /// Supports a 5G cellular network, including RedCap on Apple Watch
    /// Describes hardware support, not an active plan, coverage or connection
    case fiveG

    /// Includes the system Dynamic Island interface
    case dynamicIsland
}
