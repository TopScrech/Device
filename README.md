# Device

A pure Swift device information library with no third-party dependencies or code generation

```swift
import Device

let supportsMagSafe = Device.current.has(.magSafe)
let phone = Device(identifier: "iPhone16,1")
let capabilities = phone.capabilities
```

`Device.current` is available on Apple platforms and uses the simulated model when running in Simulator

The initial capability is `.magSafe`, meaning built-in iPhone magnetic wireless charging — Mac MagSafe power connectors and accessory attachment detection are outside its scope

Model capabilities are maintained directly in Swift, informed by [DeviceKit](https://github.com/devicekit/DeviceKit) and [Device](https://github.com/kudit/Device)

Unknown identifiers are preserved and return an empty capability set, so `has` reports known support rather than guessing capabilities for future devices

## Validation

```sh
swift test --scratch-path /tmp/device-package-build
```
