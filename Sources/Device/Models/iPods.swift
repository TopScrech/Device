extension Device {
    public static let iPods: [DeviceDefinition] = [
        .init(
            name: "iPod touch",
            identifiers: ["iPod1,1"],
            announcementDate: .init(year: 2007, month: 9, day: 5),
            releaseDate: .init(year: 2007, month: 9, day: 13),
            cpu: .s5L8900,
            modelNumbers: ["A1213"],
            displays: [.init(role: .primary, diagonal: 3.5, resolution: .init(width: 320, height: 480), ppi: 163)],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPod touch (2nd generation)",
            identifiers: ["iPod2,1"],
            announcementDate: .init(year: 2008, month: 9, day: 9),
            releaseDate: .init(year: 2008, month: 9, day: 9),
            cpu: .s5L8720,
            modelNumbers: ["A1288", "A1319"],
            displays: [.init(role: .primary, diagonal: 3.5, resolution: .init(width: 320, height: 480), ppi: 163)],
            dockConnector: .thirtyPin,
            // Owner report: https://www.ifixit.com/Answers/View/10159
            // Software enablement: https://www.ifixit.com/News/14173/ipod-touch-3rd-gen-wheres-the-camera
            bluetoothVersion: "2.1 + EDR (requires iPhone OS 3.0 or later)"
        ),
        .init(
            name: "iPod touch (3rd generation)",
            identifiers: ["iPod3,1"],
            announcementDate: .init(year: 2009, month: 9, day: 9),
            releaseDate: .init(year: 2009, month: 9, day: 9),
            cpu: .s5L8922,
            modelNumbers: ["A1318"],
            displays: [.init(role: .primary, diagonal: 3.5, resolution: .init(width: 320, height: 480), ppi: 163)],
            dockConnector: .thirtyPin,
            // https://support.apple.com/en-us/112461
            bluetoothVersion: "2.1 + EDR",
            // https://www.ifixit.com/Teardown/iPod+Touch+3rd+Generation+Teardown/1158
            // iFixit derives 789 mAh from the original battery label
            batteryCapacity: .init(milliampHours: 789, wattHours: 2.92)
        ),
        .init(
            name: "iPod touch (4th generation)",
            identifiers: ["iPod4,1"],
            announcementDate: .init(year: 2010, month: 9, day: 1),
            releaseDate: .init(year: 2010, month: 9, day: 8),
            cpu: .a4,
            modelNumbers: ["A1367"],
            displays: [.init(role: .primary, diagonal: 3.5, resolution: .init(width: 640, height: 960), ppi: 326)],
            dockConnector: .thirtyPin,
            // https://support.apple.com/en-us/112431
            bluetoothVersion: "2.1 + EDR",
            // https://www.ifixit.com/Teardown/iPod+Touch+4th+Generation+Teardown/3562
            // 930 mAh corroborated by https://www.ifixit.com/News/3498/ipod-touch-5th-generation-teardown
            batteryCapacity: .init(milliampHours: 930, wattHours: 3.44)
        ),
        .init(
            name: "iPod touch (5th generation)",
            identifiers: ["iPod5,1"],
            announcementDate: .init(year: 2012, month: 9, day: 12),
            releaseDate: .init(year: 2012, month: 10, day: 9),
            cpu: .a5,
            modelNumbers: ["A1421", "A1509"],
            displays: [.init(role: .primary, diagonal: 4.0, resolution: .init(width: 640, height: 1136), ppi: 326)],
            dockConnector: .lightning,
            voltage: "3.7 V",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 1030, wattHours: 3.8)
        ),
        .init(
            name: "iPod touch (6th generation)",
            identifiers: ["iPod7,1"],
            announcementDate: .init(year: 2015, month: 7, day: 15),
            releaseDate: .init(year: 2015, month: 7, day: 15),
            cpu: .a8,
            modelNumbers: ["A1574"],
            displays: [.init(role: .primary, diagonal: 4.0, resolution: .init(width: 640, height: 1136), ppi: 326)],
            dockConnector: .lightning,
            voltage: "3.83 V",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.1",
            batteryCapacity: .init(milliampHours: 1043, wattHours: 3.99)
        ),
        .init(
            name: "iPod touch (7th generation)",
            identifiers: ["iPod9,1"],
            announcementDate: .init(year: 2019, month: 5, day: 28),
            releaseDate: .init(year: 2019, month: 5, day: 30),
            cpu: .a10Fusion,
            modelNumbers: ["A2178"],
            displays: [.init(role: .primary, diagonal: 4.0, resolution: .init(width: 640, height: 1136), ppi: 326)],
            dockConnector: .lightning,
            voltage: "3.83 V",
            waterResistance: "None",
            waterResistanceDescription: "None",
            bluetoothVersion: "4.1",
            batteryCapacity: .init(milliampHours: 1043, wattHours: 3.99)
        )
    ]
}
