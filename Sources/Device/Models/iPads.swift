extension Device {
    public static let iPads: [DeviceDefinition] = [
        .init(
            name: "iPad",
            identifiers: ["iPad1,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPad 2",
            identifiers: ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"],
            dockConnector: .thirtyPin,
            bluetoothVersion: "2.1"
        ),
        .init(
            name: "iPad (3rd generation)",
            identifiers: ["iPad3,1", "iPad3,2", "iPad3,3"],
            dockConnector: .thirtyPin,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPad mini",
            identifiers: ["iPad2,5", "iPad2,6", "iPad2,7"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPad (4th generation)",
            identifiers: ["iPad3,4", "iPad3,5", "iPad3,6"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPad Air",
            identifiers: ["iPad4,1", "iPad4,2", "iPad4,3"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPad mini 2",
            identifiers: ["iPad4,4", "iPad4,5", "iPad4,6"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPad mini 3",
            identifiers: ["iPad4,7", "iPad4,8", "iPad4,9"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad mini 4",
            identifiers: ["iPad5,1", "iPad5,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Air 2",
            identifiers: ["iPad5,3", "iPad5,4"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad (5th generation)",
            identifiers: ["iPad6,11", "iPad6,12"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Pro (9.7-inch)",
            identifiers: ["iPad6,3", "iPad6,4"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Pro (12.9-inch)",
            identifiers: ["iPad6,7", "iPad6,8"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Pro 12.9-inch (2nd generation)",
            identifiers: ["iPad7,1", "iPad7,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Pro (10.5-inch)",
            identifiers: ["iPad7,3", "iPad7,4"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad (6th generation)",
            identifiers: ["iPad7,5", "iPad7,6"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Pro 11-inch",
            identifiers: ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Pro 12.9-inch (3rd generation)",
            identifiers: ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Air (3rd generation)",
            identifiers: ["iPad11,3", "iPad11,4"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad mini (5th generation)",
            identifiers: ["iPad11,1", "iPad11,2"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad (7th generation)",
            identifiers: ["iPad7,11", "iPad7,12"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Pro 11-inch (2nd generation)",
            identifiers: ["iPad8,9", "iPad8,10"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Pro 12.9-inch (4th generation)",
            identifiers: ["iPad8,11", "iPad8,12"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad (8th generation)",
            identifiers: ["iPad11,6", "iPad11,7"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad (9th generation)",
            identifiers: ["iPad12,1", "iPad12,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPad Air (4th generation)",
            identifiers: ["iPad13,1", "iPad13,2"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Air (5th generation)",
            identifiers: ["iPad13,16", "iPad13,17"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad (10th generation)",
            identifiers: ["iPad13,18", "iPad13,19"],
            dockConnector: .usbC,
            bluetoothVersion: "5.2"
        ),
        .init(
            name: "iPad Pro 11-inch (3rd generation)",
            identifiers: ["iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Pro 12.9-inch (5th generation)",
            identifiers: ["iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad mini (6th generation)",
            identifiers: ["iPad14,1", "iPad14,2"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Pro 11-inch (4th generation)",
            identifiers: ["iPad14,3", "iPad14,4"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad Pro 12.9-inch (6th generation)",
            identifiers: ["iPad14,5", "iPad14,6"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad Air 11-inch (M2)",
            identifiers: ["iPad14,8", "iPad14,9"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Air 13-inch (M2)",
            identifiers: ["iPad14,10", "iPad14,11"],
            dockConnector: .usbC,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPad Pro 11-inch (M4)",
            identifiers: ["iPad16,3", "iPad16,4"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad Pro 13-inch (M4)",
            identifiers: ["iPad16,5", "iPad16,6"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad mini (A17 Pro)",
            identifiers: ["iPad16,1", "iPad16,2"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad Air 13-inch (M3)",
            identifiers: ["iPad15,5", "iPad15,6"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad Air 11-inch (M3)",
            identifiers: ["iPad15,3", "iPad15,4"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad (A16)",
            identifiers: ["iPad15,7", "iPad15,8"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPad Pro 11-inch (M5)",
            identifiers: ["iPad17,1", "iPad17,2"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPad Pro 13-inch (M5)",
            identifiers: ["iPad17,3", "iPad17,4"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPad Air 11-inch (M4)",
            identifiers: ["iPad16,8", "iPad16,9"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPad Air 13-inch (M4)",
            identifiers: ["iPad16,10", "iPad16,11"],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        )
    ]
}
