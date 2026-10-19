// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "Device",
    products: [
        .library(name: "Device", targets: ["Device"])
    ],
    targets: [
        .target(
            name: "Device",
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ]
        ),
        .testTarget(
            name: "DeviceTests",
            dependencies: ["Device"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ]
        )
    ]
)
