extension Device {
    public static let appleTVs: [DeviceDefinition] = [
        .init(
            name: "Apple TV HD",
            identifiers: ["AppleTV5,3"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K",
            identifiers: ["AppleTV6,2"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "Apple TV 4K (2nd generation)",
            identifiers: ["AppleTV11,1"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K (3rd generation)",
            identifiers: ["AppleTV14,1"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        )
    ]
}
