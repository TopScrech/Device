/// Rated battery capacity, not current charge or battery health
public struct BatteryCapacity: Hashable, Sendable {
    public let milliampHours: Double?
    public let wattHours: Double?
    /// Individual battery capacities in mAh when known
    public let batteryMilliampHours: [Double]

    public var batteryCount: Int {
        max(1, batteryMilliampHours.count)
    }

    public init(milliampHours: Double? = nil, wattHours: Double? = nil) {
        self.batteryMilliampHours = milliampHours.map { [$0] } ?? []
        self.milliampHours = milliampHours
        self.wattHours = wattHours
    }

    /// Records multiple batteries and derives their combined capacity
    public init(batteryMilliampHours: [Double], wattHours: Double? = nil) {
        precondition(!batteryMilliampHours.isEmpty, "At least one battery is required")
        self.batteryMilliampHours = batteryMilliampHours
        self.milliampHours = batteryMilliampHours.reduce(0, +)
        self.wattHours = wattHours
    }
}
