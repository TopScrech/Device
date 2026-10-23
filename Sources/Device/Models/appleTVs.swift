extension Device {
    public static let appleTVs: [DeviceDefinition] = [
        .init(
            name: "Apple TV HD",
            identifiers: ["AppleTV5,3"],
            announcementDate: .init(year: 2015, month: 9, day: 9),
            releaseDate: .init(year: 2015, month: 10, day: 30),
            cpu: .a8,
            modelNumbers: ["A1625"],
            displays: [],
            dockConnector: .unknown,
            voltage: "12 V",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K",
            identifiers: ["AppleTV6,2"],
            announcementDate: .init(year: 2017, month: 9, day: 12),
            releaseDate: .init(year: 2017, month: 9, day: 22),
            cpu: .a10XFusion,
            modelNumbers: ["A1842"],
            displays: [],
            dockConnector: .unknown,
            voltage: "12 V",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "Apple TV 4K (2nd generation)",
            identifiers: ["AppleTV11,1"],
            announcementDate: .init(year: 2021, month: 4, day: 20),
            releaseDate: .init(year: 2021, month: 5, day: 21),
            cpu: .a12Bionic,
            modelNumbers: ["A2169"],
            displays: [],
            dockConnector: .unknown,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "Apple TV 4K (3rd generation)",
            identifiers: ["AppleTV14,1"],
            announcementDate: .init(year: 2022, month: 10, day: 18),
            releaseDate: .init(year: 2022, month: 11, day: 4),
            cpu: .a15Bionic,
            modelNumbers: ["A2737", "A2843"],
            displays: [],
            dockConnector: .unknown,
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        )
    ]
}
