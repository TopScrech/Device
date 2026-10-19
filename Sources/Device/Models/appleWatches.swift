extension Device {
    public static let appleWatches: [DeviceDefinition] = [
        .init(
            name: "Apple Watch (1st generation) 38mm",
            identifiers: ["Watch1,1"],
            cpu: .s1,
            modelNumbers: ["A1553"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 205, wattHours: 0.78)
        ),
        .init(
            name: "Apple Watch (1st generation) 42mm",
            identifiers: ["Watch1,2"],
            cpu: .s1,
            modelNumbers: ["A1554"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 246, wattHours: 0.93)
        ),
        .init(
            name: "Apple Watch Series 1 38mm",
            identifiers: ["Watch2,6"],
            cpu: .s1P,
            modelNumbers: ["A1802"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 205, wattHours: 0.78)
        ),
        .init(
            name: "Apple Watch Series 1 42mm",
            identifiers: ["Watch2,7"],
            cpu: .s1P,
            modelNumbers: ["A1803"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 246, wattHours: 0.93)
        ),
        .init(
            name: "Apple Watch Series 2 38mm",
            identifiers: ["Watch2,3"],
            cpu: .s2,
            modelNumbers: ["A1757", "A1816"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 273, wattHours: 1.03)
        ),
        .init(
            name: "Apple Watch Series 2 42mm",
            identifiers: ["Watch2,4"],
            cpu: .s2,
            modelNumbers: ["A1758", "A1817"],
            dockConnector: .unknown,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 334, wattHours: 1.27)
        ),
        .init(
            name: "Apple Watch Series 3 38mm",
            identifiers: ["Watch3,1", "Watch3,3"],
            cpu: .s3,
            modelNumbers: ["A1858", "A1860", "A1889", "A1890"],
            dockConnector: .unknown,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 262, wattHours: 1),
            batteryCapacityOverrides: [
                "A1860": .init(milliampHours: 279, wattHours: 1.07),
                "A1889": .init(milliampHours: 279, wattHours: 1.07),
                "A1890": .init(milliampHours: 279, wattHours: 1.07)
            ]
        ),
        .init(
            name: "Apple Watch Series 3 42mm",
            identifiers: ["Watch3,2", "Watch3,4"],
            cpu: .s3,
            modelNumbers: ["A1859", "A1861", "A1891", "A1892"],
            dockConnector: .unknown,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 342, wattHours: 1.31),
            batteryCapacityOverrides: [
                "A1861": .init(milliampHours: 352, wattHours: 1.34),
                "A1891": .init(milliampHours: 352, wattHours: 1.34),
                "A1892": .init(milliampHours: 352, wattHours: 1.34)
            ]
        ),
        .init(
            name: "Apple Watch Series 4 40mm",
            identifiers: ["Watch4,1", "Watch4,3"],
            cpu: .s4,
            modelNumbers: ["A1975", "A1977", "A2007"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 224.9, wattHours: 0.858)
        ),
        .init(
            name: "Apple Watch Series 4 44mm",
            identifiers: ["Watch4,2", "Watch4,4"],
            cpu: .s4,
            modelNumbers: ["A1976", "A1978", "A2008"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 291.8, wattHours: 1.113)
        ),
        .init(
            name: "Apple Watch Series 5 40mm",
            identifiers: ["Watch5,1", "Watch5,3"],
            cpu: .s5,
            modelNumbers: ["A2092", "A2094", "A2156"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 245, wattHours: 0.944)
        ),
        .init(
            name: "Apple Watch Series 5 44mm",
            identifiers: ["Watch5,2", "Watch5,4"],
            cpu: .s5,
            modelNumbers: ["A2093", "A2095", "A2157"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 296, wattHours: 1.129)
        ),
        .init(
            name: "Apple Watch Series 6 40mm",
            identifiers: ["Watch6,1", "Watch6,3"],
            cpu: .s6,
            modelNumbers: ["A2291", "A2293", "A2375"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 265.9, wattHours: 1.024)
        ),
        .init(
            name: "Apple Watch Series 6 44mm",
            identifiers: ["Watch6,2", "Watch6,4"],
            cpu: .s6,
            modelNumbers: ["A2292", "A2294", "A2376"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 303.8, wattHours: 1.17)
        ),
        .init(
            name: "Apple Watch SE 40mm",
            identifiers: ["Watch5,9", "Watch5,11"],
            cpu: .s5,
            modelNumbers: ["A2351", "A2353", "A2355"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 254, wattHours: 0.944)
        ),
        .init(
            name: "Apple Watch SE 44mm",
            identifiers: ["Watch5,10", "Watch5,12"],
            cpu: .s5,
            modelNumbers: ["A2352", "A2354", "A2356"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 296, wattHours: 1.129)
        ),
        .init(
            name: "Apple Watch Series 7 41mm",
            identifiers: ["Watch6,6", "Watch6,8"],
            cpu: .s7,
            modelNumbers: ["A2473", "A2475", "A2476"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 284, wattHours: 1.094)
        ),
        .init(
            name: "Apple Watch Series 7 45mm",
            identifiers: ["Watch6,7", "Watch6,9"],
            cpu: .s7,
            modelNumbers: ["A2474", "A2477", "A2478"],
            dockConnector: .unknown,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 309, wattHours: 1.189)
        ),
        .init(
            name: "Apple Watch Series 8 41mm",
            identifiers: ["Watch6,14", "Watch6,16"],
            cpu: .s8,
            modelNumbers: ["A2770", "A2772", "A2773", "A2857"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 282)
        ),
        .init(
            name: "Apple Watch Series 8 45mm",
            identifiers: ["Watch6,15", "Watch6,17"],
            cpu: .s8,
            modelNumbers: ["A2771", "A2774", "A2775", "A2858"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 308)
        ),
        .init(
            name: "Apple Watch SE (2nd generation) 40mm",
            identifiers: ["Watch6,10", "Watch6,12"],
            cpu: .s8,
            modelNumbers: ["A2722", "A2725", "A2726", "A2855"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 0.807),
            batteryCapacityOverrides: [
                "A2726": .init(wattHours: 0.944),
                "A2725": .init(wattHours: 0.944),
                "A2855": .init(wattHours: 0.944)
            ]
        ),
        .init(
            name: "Apple Watch SE (2nd generation) 44mm",
            identifiers: ["Watch6,11", "Watch6,13"],
            cpu: .s8,
            modelNumbers: ["A2723", "A2724", "A2727", "A2856"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 1.13)
        ),
        .init(
            name: "Apple Watch Ultra",
            identifiers: ["Watch6,18"],
            cpu: .s8,
            modelNumbers: ["A2622", "A2684", "A2859"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 542)
        ),
        .init(
            name: "Apple Watch Ultra2",
            identifiers: ["Watch7,5"],
            cpu: .s9,
            modelNumbers: ["A2986", "A2987"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 564)
        ),
        .init(
            name: "Apple Watch Ultra 3",
            identifiers: ["Watch7,12"],
            cpu: .s10,
            modelNumbers: ["A3281", "A3282"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 2.313)
        ),
        .init(
            name: "Apple Watch Ultra 4",
            identifiers: ["Watch8,1"],
            cpu: .s11,
            modelNumbers: ["A3579", "A3580"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "Apple Watch Series 9 41mm",
            identifiers: ["Watch7,1", "Watch7,3"],
            cpu: .s9,
            modelNumbers: ["A2978", "A2982", "A2983"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 282)
        ),
        .init(
            name: "Apple Watch Series 9 45mm",
            identifiers: ["Watch7,2", "Watch7,4"],
            cpu: .s9,
            modelNumbers: ["A2980", "A2984", "A2985"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 308)
        ),
        .init(
            name: "Apple Watch Series 10 42mm",
            identifiers: ["Watch7,8", "Watch7,10"],
            cpu: .s10,
            modelNumbers: ["A2997", "A2998", "A3001", "A3002"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 327)
        ),
        .init(
            name: "Apple Watch Series 10 46mm",
            identifiers: ["Watch7,9", "Watch7,11"],
            cpu: .s10,
            modelNumbers: ["A2999", "A3000", "A3003", "A3206"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 327)
        ),
        .init(
            name: "Apple Watch Series 11 42mm",
            identifiers: ["Watch7,17", "Watch7,19"],
            cpu: .s10,
            modelNumbers: ["A3331", "A3335", "A3450", "A3452"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 1.245)
        ),
        .init(
            name: "Apple Watch Series 11 46mm",
            identifiers: ["Watch7,18", "Watch7,20"],
            cpu: .s10,
            modelNumbers: ["A3333", "A3337", "A3451", "A3453"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 1.403)
        ),
        .init(
            name: "Apple Watch Series 12 42mm",
            identifiers: ["Watch8,2", "Watch8,4"],
            cpu: .s11,
            modelNumbers: ["A3581", "A3582", "A3583", "A3586"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "Apple Watch Series 12 46mm",
            identifiers: ["Watch8,3", "Watch8,5"],
            cpu: .s11,
            modelNumbers: ["A3584", "A3585", "A3587", "A3588"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "Apple Watch SE (3rd generation) 40mm",
            identifiers: ["Watch7,13", "Watch7,14"],
            cpu: .s10,
            modelNumbers: ["A3324", "A3325", "A3391", "A3392"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 1.017)
        ),
        .init(
            name: "Apple Watch SE (3rd generation) 44mm",
            identifiers: ["Watch7,15", "Watch7,16"],
            cpu: .s10,
            modelNumbers: ["A3326", "A3327", "A3328", "A3329"],
            dockConnector: .unknown,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 1.276)
        )
    ]
}
