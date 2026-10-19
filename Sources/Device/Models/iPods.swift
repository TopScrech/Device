extension Device {
    public static let iPods: [DeviceDefinition] = [
        .init(
            name: "iPod touch",
            identifiers: ["iPod1,1"],
            cpu: .s5L8900,
            modelNumbers: ["A1213"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (2nd generation)",
            identifiers: ["iPod2,1"],
            cpu: .s5L8720,
            modelNumbers: ["A1288", "A1319"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (3rd generation)",
            identifiers: ["iPod3,1"],
            cpu: .s5L8922,
            modelNumbers: ["A1318"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (4th generation)",
            identifiers: ["iPod4,1"],
            cpu: .a4,
            modelNumbers: ["A1367"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (5th generation)",
            identifiers: ["iPod5,1"],
            cpu: .a5,
            modelNumbers: ["A1421", "A1509"],
            dockConnector: .lightning,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 1030, wattHours: 3.8)
        ),
        .init(
            name: "iPod touch (6th generation)",
            identifiers: ["iPod7,1"],
            cpu: .a8,
            modelNumbers: ["A1574"],
            dockConnector: .lightning,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.1",
            batteryCapacity: .init(milliampHours: 1043, wattHours: 3.99)
        ),
        .init(
            name: "iPod touch (7th generation)",
            identifiers: ["iPod9,1"],
            cpu: .a10Fusion,
            modelNumbers: ["A2178"],
            dockConnector: .lightning,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.1",
            batteryCapacity: .init(milliampHours: 1043, wattHours: 3.99)
        )
    ]
}
