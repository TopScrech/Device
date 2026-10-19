extension Device {
    public static let iPads: [DeviceDefinition] = [
        .init(
            name: "iPad",
            identifiers: ["iPad1,1"],
            cpu: .a4,
            modelNumbers: ["A1219", "A1337"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPad 2",
            identifiers: ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"],
            cpu: .a5,
            modelNumbers: ["A1395", "A1396", "A1397"],
            dockConnector: .thirtyPin,
            bluetoothVersion: "2.1",
            batteryCapacity: .init(milliampHours: 6930, wattHours: 25)
        ),
        .init(
            name: "iPad (3rd generation)",
            identifiers: ["iPad3,1", "iPad3,2", "iPad3,3"],
            cpu: .a5X,
            modelNumbers: ["A1403", "A1416", "A1430"],
            dockConnector: .thirtyPin,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 11560, wattHours: 42.5)
        ),
        .init(
            name: "iPad mini",
            identifiers: ["iPad2,5", "iPad2,6", "iPad2,7"],
            cpu: .a5,
            modelNumbers: ["A1432", "A1454", "A1455"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 4440, wattHours: 16.5)
        ),
        .init(
            name: "iPad (4th generation)",
            identifiers: ["iPad3,4", "iPad3,5", "iPad3,6"],
            cpu: .a6X,
            modelNumbers: ["A1458", "A1459", "A1460"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 11560, wattHours: 42.5)
        ),
        .init(
            name: "iPad Air",
            identifiers: ["iPad4,1", "iPad4,2", "iPad4,3"],
            cpu: .a7,
            modelNumbers: ["A1474", "A1475", "A1476"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 8820, wattHours: 32.9)
        ),
        .init(
            name: "iPad mini 2",
            identifiers: ["iPad4,4", "iPad4,5", "iPad4,6"],
            cpu: .a7,
            modelNumbers: ["A1489", "A1490", "A1491"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0",
            batteryCapacity: .init(milliampHours: 6471, wattHours: 24.3)
        ),
        .init(
            name: "iPad mini 3",
            identifiers: ["iPad4,7", "iPad4,8", "iPad4,9"],
            cpu: .a7,
            modelNumbers: ["A1599", "A1600", "A1601"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 6471, wattHours: 24.3)
        ),
        .init(
            name: "iPad mini 4",
            identifiers: ["iPad5,1", "iPad5,2"],
            cpu: .a8,
            modelNumbers: ["A1538", "A1550"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 5124, wattHours: 19.1)
        ),
        .init(
            name: "iPad Air 2",
            identifiers: ["iPad5,3", "iPad5,4"],
            cpu: .a8X,
            modelNumbers: ["A1566", "A1567"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 7340, wattHours: 27.62)
        ),
        .init(
            name: "iPad (5th generation)",
            identifiers: ["iPad6,11", "iPad6,12"],
            cpu: .a9,
            modelNumbers: ["A1822", "A1823"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 8820, wattHours: 32.9)
        ),
        .init(
            name: "iPad Pro (9.7-inch)",
            identifiers: ["iPad6,3", "iPad6,4"],
            cpu: .a9X,
            modelNumbers: ["A1673", "A1674", "A1675"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 7306, wattHours: 27.91)
        ),
        .init(
            name: "iPad Pro (12.9-inch)",
            identifiers: ["iPad6,7", "iPad6,8"],
            cpu: .a9X,
            modelNumbers: ["A1584", "A1652"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 10307, wattHours: 38.8)
        ),
        .init(
            name: "iPad Pro 12.9-inch (2nd generation)",
            identifiers: ["iPad7,1", "iPad7,2"],
            cpu: .a10XFusion,
            modelNumbers: ["A1670", "A1671", "A1821"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 10994, wattHours: 41.4)
        ),
        .init(
            name: "iPad Pro (10.5-inch)",
            identifiers: ["iPad7,3", "iPad7,4"],
            cpu: .a10XFusion,
            modelNumbers: ["A1701", "A1709", "A1852"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 8134, wattHours: 30.8)
        ),
        .init(
            name: "iPad (6th generation)",
            identifiers: ["iPad7,5", "iPad7,6"],
            cpu: .a10Fusion,
            modelNumbers: ["A1893", "A1954"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 8820, wattHours: 32.9)
        ),
        .init(
            name: "iPad Pro 11-inch",
            identifiers: ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"],
            cpu: .a12XBionic,
            modelNumbers: ["A1934", "A1979", "A1980", "A2013"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 7812, wattHours: 29.45)
        ),
        .init(
            name: "iPad Pro 12.9-inch (3rd generation)",
            identifiers: ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"],
            cpu: .a12XBionic,
            modelNumbers: ["A1876", "A1895", "A1983", "A2014"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 9720, wattHours: 36.71)
        ),
        .init(
            name: "iPad Air (3rd generation)",
            identifiers: ["iPad11,3", "iPad11,4"],
            cpu: .a12Bionic,
            modelNumbers: ["A2123", "A2152", "A2153", "A2154"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 8134, wattHours: 30.8)
        ),
        .init(
            name: "iPad mini (5th generation)",
            identifiers: ["iPad11,1", "iPad11,2"],
            cpu: .a12Bionic,
            modelNumbers: ["A2124", "A2125", "A2126", "A2133"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 5124, wattHours: 19.1)
        ),
        .init(
            name: "iPad (7th generation)",
            identifiers: ["iPad7,11", "iPad7,12"],
            cpu: .a10Fusion,
            modelNumbers: ["A2197", "A2198", "A2199", "A2200"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 8820, wattHours: 32.9)
        ),
        .init(
            name: "iPad Pro 11-inch (2nd generation)",
            identifiers: ["iPad8,9", "iPad8,10"],
            cpu: .a12ZBionic,
            modelNumbers: ["A2068", "A2228", "A2230", "A2231"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 7540, wattHours: 28.79)
        ),
        .init(
            name: "iPad Pro 12.9-inch (4th generation)",
            identifiers: ["iPad8,11", "iPad8,12"],
            cpu: .a12ZBionic,
            modelNumbers: ["A2069", "A2229", "A2232", "A2233"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 9720, wattHours: 36.71)
        ),
        .init(
            name: "iPad (8th generation)",
            identifiers: ["iPad11,6", "iPad11,7"],
            cpu: .a12Bionic,
            modelNumbers: ["A2270", "A2428", "A2429", "A2430"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 8827, wattHours: 32.4)
        ),
        .init(
            name: "iPad (9th generation)",
            identifiers: ["iPad12,1", "iPad12,2"],
            cpu: .a13Bionic,
            modelNumbers: ["A2602", "A2603", "A2604", "A2605"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2",
            batteryCapacity: .init(milliampHours: 8557, wattHours: 32.4)
        ),
        .init(
            name: "iPad Air (4th generation)",
            identifiers: ["iPad13,1", "iPad13,2"],
            cpu: .a14Bionic,
            modelNumbers: ["A2072", "A2316", "A2324", "A2325"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 7606, wattHours: 28.6)
        ),
        .init(
            name: "iPad Air (5th generation)",
            identifiers: ["iPad13,16", "iPad13,17"],
            cpu: .m1,
            modelNumbers: ["A2588", "A2589", "A2591"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 7600, wattHours: 28.6)
        ),
        .init(
            name: "iPad (10th generation)",
            identifiers: ["iPad13,18", "iPad13,19"],
            cpu: .a14Bionic,
            modelNumbers: ["A2696", "A2757", "A2777", "A3162"],
            dockConnector: .usbC,
            bluetoothVersion: "5.2",
            batteryCapacity: .init(milliampHours: 7606, wattHours: 28.6)
        ),
        .init(
            name: "iPad Pro 11-inch (3rd generation)",
            identifiers: ["iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7"],
            cpu: .m1,
            modelNumbers: ["A2301", "A2377", "A2459", "A2460"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 7538, wattHours: 28.65)
        ),
        .init(
            name: "iPad Pro 12.9-inch (5th generation)",
            identifiers: ["iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11"],
            cpu: .m1,
            modelNumbers: ["A2378", "A2379", "A2461", "A2462"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 10566, wattHours: 40.33)
        ),
        .init(
            name: "iPad mini (6th generation)",
            identifiers: ["iPad14,1", "iPad14,2"],
            cpu: .a15Bionic,
            modelNumbers: ["A2567", "A2568", "A2569"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 5124, wattHours: 19.3)
        ),
        .init(
            name: "iPad Pro 11-inch (4th generation)",
            identifiers: ["iPad14,3", "iPad14,4"],
            cpu: .m2,
            modelNumbers: ["A2435", "A2759", "A2761", "A2762"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 7538, wattHours: 28.65)
        ),
        .init(
            name: "iPad Pro 12.9-inch (6th generation)",
            identifiers: ["iPad14,5", "iPad14,6"],
            cpu: .m2,
            modelNumbers: ["A2436", "A2437", "A2764", "A2766"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 10758, wattHours: 40.88)
        ),
        .init(
            name: "iPad Air 11-inch (M2)",
            identifiers: ["iPad14,8", "iPad14,9"],
            cpu: .m2,
            modelNumbers: ["A2902", "A2903", "A2904"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 7606, wattHours: 28.93)
        ),
        .init(
            name: "iPad Air 13-inch (M2)",
            identifiers: ["iPad14,10", "iPad14,11"],
            cpu: .m2,
            modelNumbers: ["A2898", "A2899", "A2900"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0",
            batteryCapacity: .init(milliampHours: 9705, wattHours: 36.59)
        ),
        .init(
            name: "iPad Pro 11-inch (M4)",
            identifiers: ["iPad16,3", "iPad16,4"],
            cpu: .m4,
            modelNumbers: ["A2836", "A2837", "A3006"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 8160, wattHours: 31.29)
        ),
        .init(
            name: "iPad Pro 13-inch (M4)",
            identifiers: ["iPad16,5", "iPad16,6"],
            cpu: .m4,
            modelNumbers: ["A2925", "A2926", "A3007"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 10290, wattHours: 38.99)
        ),
        .init(
            name: "iPad mini (A17 Pro)",
            identifiers: ["iPad16,1", "iPad16,2"],
            cpu: .a17Pro,
            modelNumbers: ["A2993", "A2995", "A2996"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 5078, wattHours: 19.3)
        ),
        .init(
            name: "iPad Air 13-inch (M3)",
            identifiers: ["iPad15,5", "iPad15,6"],
            cpu: .m3,
            modelNumbers: ["A3268", "A3269", "A3271"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 9705, wattHours: 36.59)
        ),
        .init(
            name: "iPad Air 11-inch (M3)",
            identifiers: ["iPad15,3", "iPad15,4"],
            cpu: .m3,
            modelNumbers: ["A3266", "A3267", "A3270"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(milliampHours: 7606, wattHours: 28.93)
        ),
        .init(
            name: "iPad (A16)",
            identifiers: ["iPad15,7", "iPad15,8"],
            cpu: .a16Bionic,
            modelNumbers: ["A3354", "A3355", "A3356"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3",
            batteryCapacity: .init(wattHours: 28.93)
        ),
        .init(
            name: "iPad Pro 11-inch (M5)",
            identifiers: ["iPad17,1", "iPad17,2"],
            cpu: .m5,
            modelNumbers: ["A3357", "A3358", "A3359"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0",
            batteryCapacity: .init(milliampHours: 8160, wattHours: 31.29)
        ),
        .init(
            name: "iPad Pro 13-inch (M5)",
            identifiers: ["iPad17,3", "iPad17,4"],
            cpu: .m5,
            modelNumbers: ["A3360", "A3361", "A3362"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0",
            batteryCapacity: .init(milliampHours: 10290, wattHours: 38.99)
        ),
        .init(
            name: "iPad Air 11-inch (M4)",
            identifiers: ["iPad16,8", "iPad16,9"],
            cpu: .m4,
            modelNumbers: ["A3459", "A3460", "A3463"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0",
            batteryCapacity: .init(milliampHours: 7606, wattHours: 28.93)
        ),
        .init(
            name: "iPad Air 13-inch (M4)",
            identifiers: ["iPad16,10", "iPad16,11"],
            cpu: .m4,
            modelNumbers: ["A3461", "A3462", "A3464"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0",
            batteryCapacity: .init(milliampHours: 9705, wattHours: 36.59)
        )
    ]
}
