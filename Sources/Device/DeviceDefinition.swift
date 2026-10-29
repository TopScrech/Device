/// Shared specifications for a model and its regional hardware identifiers
public struct DeviceDefinition: Hashable, Sendable {
    public let name: String
    public let identifiers: [String]
    /// First official announcement of this model
    public let announcementDate: DeviceDate?
    /// First consumer availability in any market, or officially scheduled launch, excluding preorders
    public let releaseDate: DeviceDate?
    /// Regulatory A-model numbers for this model, distinct from hardware identifiers
    public let modelNumbers: [String]
    /// nil means the SIM configuration has not been catalogued
    public let eSIMOnlyModelNumbers: Set<String>?
    public let batteryCapacity: BatteryCapacity?
    public let eSIMOnlyBatteryCapacity: BatteryCapacity?
    /// Other capacity differences, such as GPS and cellular Apple Watches
    public let batteryCapacityOverrides: [String: BatteryCapacity]
    public let capabilities: Set<Capability>
    /// Complete capability sets for hardware identifiers or regulatory A-models that differ from the base set
    public let capabilityOverrides: [String: Set<Capability>]
    /// Bluetooth specification version from the model catalogue, not a live connection
    public let bluetoothVersion: String?
    /// Maximum advertised Wi-Fi generation and IEEE standard, not a live connection
    public let wifiVersion: String?
    public let cpu: CPU?
    /// Neural Engine cores by nominal storage capacity in GB
    public let neuralEngineCoresByStorage: [Int: Int]
    /// Nominal catalogue voltage text, not a live reading
    public let voltage: String?
    /// Built-in pixel displays, empty when inapplicable and nil when not catalogued
    public let displays: [DeviceDisplay]?
    public let dockConnector: DockConnector
    /// Catalogue rating text, nil when unmapped and "None" when explicitly unrated
    public let waterResistance: String?
    /// Catalogue description of water resistance, not a live hardware measurement
    public let waterResistanceDescription: String?

    public init(
        name: String,
        identifiers: [String],
        announcementDate: DeviceDate? = nil,
        releaseDate: DeviceDate? = nil,
        cpu: CPU? = nil,
        modelNumbers: [String] = [],
        capabilities: Set<Capability> = [],
        capabilityOverrides: [String: Set<Capability>] = [:],
        displays: [DeviceDisplay]? = nil,
        dockConnector: DockConnector,
        wifiVersion: String? = nil,
        voltage: String? = nil,
        waterResistance: String? = nil,
        waterResistanceDescription: String? = nil,
        bluetoothVersion: String? = nil,
        batteryCapacity: BatteryCapacity? = nil,
        eSIMOnlyBatteryCapacity: BatteryCapacity? = nil,
        eSIMOnlyModelNumbers: Set<String>? = nil,
        batteryCapacityOverrides: [String: BatteryCapacity] = [:],
        neuralEngineCoresByStorage: [Int: Int] = [:]
    ) {
        self.waterResistance = waterResistance
        self.waterResistanceDescription = waterResistanceDescription
        self.voltage = voltage
        precondition(neuralEngineCoresByStorage.allSatisfy { $0.key > 0 && $0.value > 0 })
        self.cpu = cpu
        self.neuralEngineCoresByStorage = neuralEngineCoresByStorage
        self.modelNumbers = modelNumbers
        self.batteryCapacity = batteryCapacity
        self.eSIMOnlyBatteryCapacity = eSIMOnlyBatteryCapacity
        self.eSIMOnlyModelNumbers = eSIMOnlyModelNumbers
        self.batteryCapacityOverrides = batteryCapacityOverrides
        self.name = name
        self.announcementDate = announcementDate
        self.releaseDate = releaseDate
        self.identifiers = identifiers
        self.capabilities = capabilities
        self.capabilityOverrides = capabilityOverrides
        self.displays = displays
        self.dockConnector = dockConnector
        self.bluetoothVersion = bluetoothVersion
        self.wifiVersion = wifiVersion
    }

    /// Resolves a known A-model, or returns a shared capacity when no variant is needed
    public func batteryCapacity(for modelNumber: String?) -> BatteryCapacity? {
        if let modelNumber {
            guard modelNumbers.contains(modelNumber) else { return nil }
            if let override = batteryCapacityOverrides[modelNumber] {
                return override
            }
            if let eSIMOnlyBatteryCapacity {
                guard let eSIMOnlyModelNumbers else { return nil }
                if eSIMOnlyModelNumbers.contains(modelNumber) {
                    return eSIMOnlyBatteryCapacity
                }
            }
            return batteryCapacity
        }

        if eSIMOnlyBatteryCapacity == nil && batteryCapacityOverrides.isEmpty {
            return batteryCapacity
        }

        // A hardware identifier may cover multiple A-models with different batteries
        let capacities = modelNumbers.map { batteryCapacity(for: $0) }
        guard let first = capacities.first else { return nil }
        if capacities.allSatisfy({ $0 == first }) { return first }

        // Keep a shared published unit when only the other unit is unknown or differs
        let milliampHours = first?.milliampHours.flatMap { value in
            capacities.allSatisfy { $0?.milliampHours == value } ? value : nil
        }
        let wattHours = first?.wattHours.flatMap { value in
            capacities.allSatisfy { $0?.wattHours == value } ? value : nil
        }
        guard milliampHours != nil || wattHours != nil else { return nil }
        return .init(milliampHours: milliampHours, wattHours: wattHours)
    }
}
