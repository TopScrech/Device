extension Device {
    public static let appleTVs: [DeviceDefinition] = [
        .init(
            name: "Apple TV HD",
            identifiers: ["AppleTV5,3"],
            modelNumbers: ["A1625"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K",
            identifiers: ["AppleTV6,2"],
            modelNumbers: ["A1842"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "Apple TV 4K (2nd generation)",
            identifiers: ["AppleTV11,1"],
            modelNumbers: ["A2169"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K (3rd generation)",
            identifiers: ["AppleTV14,1"],
            modelNumbers: ["A2737", "A2843"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        )
    ]
}
