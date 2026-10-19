extension Device {
    /// Known iPhone specifications, maintained directly in Swift
    public static let iPhones: [DeviceDefinition] = [
        .init(
            name: "iPhone",
            identifiers: ["iPhone1,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPhone 3G",
            identifiers: ["iPhone1,2"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPhone 3GS",
            identifiers: ["iPhone2,1"],
            dockConnector: .thirtyPin
        ),
        .init(
            name: "iPhone 4",
            identifiers: ["iPhone3,1", "iPhone3,2", "iPhone3,3"],
            dockConnector: .thirtyPin,
            bluetoothVersion: "2.1 + EDR"
        ),
        .init(
            name: "iPhone 4s",
            identifiers: ["iPhone4,1"],
            dockConnector: .thirtyPin,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPhone 5",
            identifiers: ["iPhone5,1", "iPhone5,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPhone 5c",
            identifiers: ["iPhone5,3", "iPhone5,4"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPhone 5s",
            identifiers: ["iPhone6,1", "iPhone6,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.0"
        ),
        .init(
            name: "iPhone 6",
            identifiers: ["iPhone7,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone 6 Plus",
            identifiers: ["iPhone7,1"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone 6s",
            identifiers: ["iPhone8,1"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone 6s Plus",
            identifiers: ["iPhone8,2"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone SE (1st generation)",
            identifiers: ["iPhone8,4"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone 7",
            identifiers: ["iPhone9,1", "iPhone9,3"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone 7 Plus",
            identifiers: ["iPhone9,2", "iPhone9,4"],
            dockConnector: .lightning,
            bluetoothVersion: "4.2"
        ),
        .init(
            name: "iPhone 8",
            identifiers: ["iPhone10,1", "iPhone10,4"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 8 Plus",
            identifiers: ["iPhone10,2", "iPhone10,5"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone X",
            identifiers: ["iPhone10,3", "iPhone10,6"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone XS",
            identifiers: ["iPhone11,2"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone XS Max",
            identifiers: ["iPhone11,4", "iPhone11,6"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone XR",
            identifiers: ["iPhone11,8"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 11",
            identifiers: ["iPhone12,1"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 11 Pro",
            identifiers: ["iPhone12,3"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 11 Pro Max",
            identifiers: ["iPhone12,5"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone SE (2nd generation)",
            identifiers: ["iPhone12,8"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 12",
            identifiers: ["iPhone13,2"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 12 mini",
            identifiers: ["iPhone13,1"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 12 Pro",
            identifiers: ["iPhone13,3"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 12 Pro Max",
            identifiers: ["iPhone13,4"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 13",
            identifiers: ["iPhone14,5"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 13 mini",
            identifiers: ["iPhone14,4"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 13 Pro",
            identifiers: ["iPhone14,2"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 13 Pro Max",
            identifiers: ["iPhone14,3"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone SE (3rd generation)",
            identifiers: ["iPhone14,6"],
            dockConnector: .lightning,
            bluetoothVersion: "5.0"
        ),
        .init(
            name: "iPhone 14",
            identifiers: ["iPhone14,7"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 14 Plus",
            identifiers: ["iPhone14,8"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 14 Pro",
            identifiers: ["iPhone15,2"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 14 Pro Max",
            identifiers: ["iPhone15,3"],
            capabilities: [.magSafe],
            dockConnector: .lightning,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 15",
            identifiers: ["iPhone15,4"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 15 Plus",
            identifiers: ["iPhone15,5"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 15 Pro",
            identifiers: ["iPhone16,1"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 15 Pro Max",
            identifiers: ["iPhone16,2"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 16",
            identifiers: ["iPhone17,3"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 16 Plus",
            identifiers: ["iPhone17,4"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 16 Pro",
            identifiers: ["iPhone17,1"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 16 Pro Max",
            identifiers: ["iPhone17,2"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 16e",
            identifiers: ["iPhone17,5"],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 17",
            identifiers: ["iPhone18,3"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPhone Air",
            identifiers: ["iPhone18,4"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPhone 17 Pro",
            identifiers: ["iPhone18,1"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPhone 17 Pro Max",
            identifiers: ["iPhone18,2"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPhone 17e",
            identifiers: ["iPhone18,5"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "5.3"
        ),
        .init(
            name: "iPhone 18 Pro",
            identifiers: ["iPhone19,2"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPhone 18 Pro Max",
            identifiers: ["iPhone19,3", "iPhone19,7"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        ),
        .init(
            name: "iPhone Duo",
            identifiers: ["iPhone19,4"],
            capabilities: [.magSafe],
            dockConnector: .usbC,
            bluetoothVersion: "6.0"
        )
    ]
}
