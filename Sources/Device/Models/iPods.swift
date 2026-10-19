extension Device {
    public static let iPods: [DeviceDefinition] = [
        .init(
            name: "iPod touch",
            identifiers: ["iPod1,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (2nd generation)",
            identifiers: ["iPod2,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (3rd generation)",
            identifiers: ["iPod3,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (4th generation)",
            identifiers: ["iPod4,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (5th generation)",
            identifiers: ["iPod5,1"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPod touch (6th generation)",
            identifiers: ["iPod7,1"],
            dockConnector: .lightning,
            bluetoothVersion: "4.1"
        ),
        .init(
            name: "iPod touch (7th generation)",
            identifiers: ["iPod9,1"],
            dockConnector: .lightning,
            bluetoothVersion: "4.1"
        )
    ]
}
