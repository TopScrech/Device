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

    public var cpu: CPU? { definition?.cpu }

    public var name: String? {
        definition?.name
    }

    /// Known capabilities only — unrecognized models have an empty set
    public var capabilities: Set<Capability> {
        definition?.capabilities ?? []
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
