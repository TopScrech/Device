/// Rated battery capacity, not current charge or battery health
public struct BatteryCapacity: Hashable, Sendable {
    public let milliampHours: Double?
    public let wattHours: Double?
    /// Individual battery capacities in mAh when known
    public let batteryMilliampHours: [Double]

    /// Individual battery capacities in Wh when known
    public let batteryWattHours: [Double]

    public var batteryCount: Int {
        max(1, batteryMilliampHours.count, batteryWattHours.count)
    }

    public init(milliampHours: Double? = nil, wattHours: Double? = nil) {
        self.batteryMilliampHours = milliampHours.map { [$0] } ?? []
        self.batteryWattHours = wattHours.map { [$0] } ?? []
        self.milliampHours = milliampHours
        self.wattHours = wattHours
    }

    /// Records multiple batteries and derives their combined capacity
    public init(batteryMilliampHours: [Double], wattHours: Double? = nil) {
        precondition(!batteryMilliampHours.isEmpty, "At least one battery is required")
        self.batteryMilliampHours = batteryMilliampHours
        self.batteryWattHours = batteryMilliampHours.count == 1 ? wattHours.map { [$0] } ?? [] : []
        self.milliampHours = batteryMilliampHours.reduce(0, +)
        self.wattHours = wattHours
    }

    /// Records individual Wh capacities, optionally paired with mAh in the same battery order
    public init(batteryMilliampHours: [Double] = [], batteryWattHours: [Double]) {
        precondition(!batteryWattHours.isEmpty, "At least one battery is required")
        precondition(batteryMilliampHours.isEmpty || batteryMilliampHours.count == batteryWattHours.count,
                     "Known capacities must describe the same batteries")
        self.batteryMilliampHours = batteryMilliampHours
        self.batteryWattHours = batteryWattHours
        self.milliampHours = batteryMilliampHours.isEmpty ? nil : batteryMilliampHours.reduce(0, +)
        self.wattHours = batteryWattHours.reduce(0, +)
    }
}
