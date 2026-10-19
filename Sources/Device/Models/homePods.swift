extension Device {
    public static let homePods: [DeviceDefinition] = [
        .init(
            name: "HomePod",
            identifiers: ["AudioAccessory1,1", "AudioAccessory1,2"],
            cpu: .a8,
            modelNumbers: ["A1639"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "HomePod mini",
            identifiers: ["AudioAccessory5,1", "AudioAccessorySingle5,1"],
            cpu: .s5,
            modelNumbers: ["A2374", "A2531"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "HomePod (2nd generation)",
            identifiers: ["AudioAccessory6,1"],
            cpu: .s7,
            modelNumbers: ["A2825", "A2878"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0"
        )
    ]
}
