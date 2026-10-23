/// Hardware identified by its model identifier, such as `iPhone16,1`
public struct Device: Hashable, Sendable {
    public let identifier: String
    public let modelNumber: String?

    public init(identifier: String, modelNumber: String? = nil) {
        self.identifier = identifier
        let isModelNumber = identifier.count == 5 && identifier.first == "A"
            && identifier.dropFirst().allSatisfy(\.isNumber)
        self.modelNumber = modelNumber ?? (isModelNumber ? identifier : nil)
    }

    /// Looks up a regulatory A-model without inventing a hardware identifier
    public init(modelNumber: String) {
        self.init(identifier: modelNumber, modelNumber: modelNumber)
    }

    public static let all = iPhones + iPads + iPods + appleWatches + appleTVs + homePods

    public var definition: DeviceDefinition? {
        Self.all.first {
            let matchesIdentifier = $0.identifiers.contains(identifier) || $0.modelNumbers.contains(identifier)
            return matchesIdentifier && (modelNumber.map($0.modelNumbers.contains) ?? true)
        }
    }

    public var announcementDate: DeviceDate? { definition?.announcementDate }

    public var releaseDate: DeviceDate? { definition?.releaseDate }

    public var waterResistance: String? { definition?.waterResistance }

    public var waterResistanceDescription: String? { definition?.waterResistanceDescription }

    /// Nominal voltage from the catalogue, nil when not mapped
    public var voltage: String? { definition?.voltage }

    /// All catalogued built-in displays, nil for unknown models, empty for screenless devices
    public var displays: [DeviceDisplay]? { definition?.displays }

    /// Primary display, or the inner display on a folding device, not a live display selection
    public var display: DeviceDisplay? { displays?.first }

    public var cpu: CPU? { definition?.cpu }

    public var name: String? {
        definition?.name
    }

    /// Known capabilities only — unrecognized models have an empty set
    public var capabilities: Set<Capability> {
        guard let definition else { return [] }
        return definition.capabilityOverrides[modelNumber ?? identifier] ?? definition.capabilities
    }

    /// Unknown models never default to Lightning
    public var dockConnector: DockConnector {
        definition?.dockConnector ?? .unknown
    }

    /// The model's Bluetooth specification version, or nil when not mapped
    public var bluetoothVersion: String? {
        definition?.bluetoothVersion
    }

    /// nil when capacity is unknown or the regional variant is ambiguous
    public var batteryCapacity: BatteryCapacity? {
        definition?.batteryCapacity(for: modelNumber)
    }

    /// Known SIM configuration for the supplied A-model, otherwise nil
    public var isESIMOnly: Bool? {
        guard let definition,
              let models = definition.eSIMOnlyModelNumbers else { return nil }
        if let modelNumber {
            return models.contains(modelNumber)
        }
        if models.isEmpty { return false }
        if models == Set(definition.modelNumbers) { return true }
        return nil
    }

    /// Applies a user-supplied A-model to this device's hardware identifier
    public func withModelNumber(_ modelNumber: String) -> Device {
        Device(identifier: identifier, modelNumber: modelNumber)
    }

    public func has(_ capability: Capability) -> Bool {
        capabilities.contains(capability)
    }
}
