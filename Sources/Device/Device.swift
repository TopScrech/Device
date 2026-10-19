/// Hardware identified by its model identifier, such as `iPhone16,1`
public struct Device: Hashable, Sendable {
    public let identifier: String

    public init(identifier: String) {
        self.identifier = identifier
    }

    public static let all = iPhones + iPads + iPods + appleWatches + appleTVs + homePods

    public var definition: DeviceDefinition? {
        Self.all.first { $0.identifiers.contains(identifier) }
    }

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

    public func has(_ capability: Capability) -> Bool {
        capabilities.contains(capability)
    }
}
