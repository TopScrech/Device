extension Device {
    public static let appleTVs: [DeviceDefinition] = [
        .init(
            name: "Apple TV HD",
            identifiers: ["AppleTV5,3"],
            cpu: .a8,
            modelNumbers: ["A1625"],
            dockConnector: .unknown,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K",
            identifiers: ["AppleTV6,2"],
            cpu: .a10XFusion,
            modelNumbers: ["A1842"],
            dockConnector: .unknown,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "Apple TV 4K (2nd generation)",
            identifiers: ["AppleTV11,1"],
            cpu: .a12Bionic,
            modelNumbers: ["A2169"],
            dockConnector: .unknown,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K (3rd generation)",
            identifiers: ["AppleTV14,1"],
            cpu: .a15Bionic,
            modelNumbers: ["A2737", "A2843"],
            dockConnector: .unknown,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        )
    ]
}
