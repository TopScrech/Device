/// Shared specifications for a model and its regional hardware identifiers
public struct DeviceDefinition: Hashable, Sendable {
    public let name: String
    public let identifiers: [String]
    public let capabilities: Set<Capability>
    /// Bluetooth specification version from the model catalogue, not a live connection
    public let bluetoothVersion: String?
    public let dockConnector: DockConnector

    public init(
        name: String,
        identifiers: [String],
        capabilities: Set<Capability> = [],
        dockConnector: DockConnector,
        bluetoothVersion: String? = nil
    ) {
        self.name = name
        self.identifiers = identifiers
        self.capabilities = capabilities
        self.dockConnector = dockConnector
        self.bluetoothVersion = bluetoothVersion
    }
}
