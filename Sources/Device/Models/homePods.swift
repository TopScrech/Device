extension Device {
    public static let homePods: [DeviceDefinition] = [
        .init(
            name: "HomePod",
            identifiers: ["AudioAccessory1,1", "AudioAccessory1,2"],
            announcementDate: .init(year: 2017, month: 6, day: 5),
            releaseDate: .init(year: 2018, month: 2, day: 9),
            cpu: .a8,
            modelNumbers: ["A1639"],
            displays: [],
            dockConnector: .none,
            wifiVersion: "Wi-Fi 5 (802.11ac)",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "HomePod mini",
            identifiers: ["AudioAccessory5,1", "AudioAccessorySingle5,1"],
            announcementDate: .init(year: 2020, month: 10, day: 13),
            releaseDate: .init(year: 2020, month: 11, day: 16),
            cpu: .s5,
            modelNumbers: ["A2374", "A2531"],
            displays: [],
            dockConnector: .none,
            wifiVersion: "Wi-Fi 4 (802.11n)",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "HomePod (2nd generation)",
            identifiers: ["AudioAccessory6,1"],
            announcementDate: .init(year: 2023, month: 1, day: 18),
            releaseDate: .init(year: 2023, month: 2, day: 3),
            cpu: .s7,
            modelNumbers: ["A2825", "A2878"],
            displays: [],
            dockConnector: .none,
            wifiVersion: "Wi-Fi 4 (802.11n)",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "5.0"
        )
    ]
}
