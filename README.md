# Device

A pure Swift device information library with no third-party dependencies or code generation

```swift
import Device

let supportsMagSafe = Device.current.has(.magSafe)
let phone = Device(identifier: "iPhone16,1")
let capabilities = phone.capabilities
let connector = phone.dockConnector // .usbC
let bluetoothVersion = phone.bluetoothVersion // "5.3"
let name = phone.name // "iPhone 15 Pro"
```

`Device.current` is available on Apple platforms and uses the simulated model when running in Simulator

The `.dockConnector` property returns `.usbC`, `.lightning`, `.thirtyPin` or `.unknown`

Dock connector mappings cover iPhones, iPads and iPod touch models — other devices return `.unknown` for their dock connector

Each model has its own initializer in `Sources/Device/Models`, with its name, regional identifiers, capabilities and connector together

```swift
.init(
    name: "iPhone Duo",
    identifiers: ["iPhone19,4"],
    capabilities: [.magSafe],
    dockConnector: .usbC
)
```

Browse definitions using `Device.iPhones`, `Device.iPads`, `Device.iPods`, `Device.appleWatches`, `Device.appleTVs`, `Device.homePods` or `Device.all`

`bluetoothVersion` is an optional string containing the model's Bluetooth specification version, including labels such as `"2.1 + EDR"` — it does not report the negotiated version of a live connection

Bluetooth values were migrated from Device Specs' custom mapping, with iPhone Duo set to `"6.0"` — missing mappings return `nil`

The original mapping cites [EveryMac](https://everymac.com/systems/apple/iphone/iphone-faq/iphone-bluetooth-support-by-model.html) and [Apple's iPhone comparison](https://apple.com/iphone/compare)

The initial capability is `.magSafe`, meaning built-in iPhone magnetic wireless charging — Mac MagSafe power connectors and accessory attachment detection are outside its scope

Model capabilities are maintained directly in Swift, informed by [DeviceKit](https://github.com/devicekit/DeviceKit) and [Device](https://github.com/kudit/Device)

Unknown identifiers are preserved and return an empty capability set, so `has` reports known support rather than guessing capabilities for future devices

## Validation

```sh
swift test --scratch-path /tmp/device-package-build
```
