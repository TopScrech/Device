# Device

A pure Swift device information library with no third-party dependencies or code generation

```swift
import Device

let supportsMagSafe = Device.current.has(.magSafe)
let supportsWirelessCharging = Device.current.has(.wirelessCharging)
let supports5G = Device.current.has(.fiveG)
let hasDynamicIsland = Device.current.has(.dynamicIsland)
let phone = Device(identifier: "iPhone16,1")
let capabilities = phone.capabilities
let connector = phone.dockConnector // .usbC
let bluetoothVersion = phone.bluetoothVersion // "5.3"
let wifiVersion = phone.wifiVersion // "Wi-Fi 6E (802.11ax)"
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
    modelNumbers: ["A3447", "A3719", "A3720", "A3721"],
    capabilities: [.magSafe, .wirelessCharging, .fiveG, .dynamicIsland],
    dockConnector: .usbC,
    batteryCapacity: .init(batteryMilliampHours: [2962, 1921], batteryWattHours: [11.567, 7.506]),
    eSIMOnlyModelNumbers: ["A3447", "A3719", "A3720", "A3721"]
)
```

Browse definitions using `Device.iPhones`, `Device.iPads`, `Device.iPods`, `Device.appleWatches`, `Device.appleTVs`, `Device.homePods` or `Device.all`

`bluetoothVersion` is an optional string containing the model's Bluetooth specification version, including labels such as `"2.1 + EDR"` — it does not report the negotiated version of a live connection

Bluetooth values were migrated from Device Specs' custom mapping, with iPhone Duo set to `"6.0"` — missing mappings return `nil`

`wifiVersion` returns the model's maximum advertised Wi-Fi generation and IEEE standard, such as `"Wi-Fi 6 (802.11ax)"` or `"Wi-Fi 6E (802.11ax)"`, on both `Device` and `DeviceDefinition`

All 151 catalogued models have a Wi-Fi mapping — unknown devices and definitions without a mapping return `nil`
Legacy b/g devices use `"802.11b/g"`
The value describes catalogue support, without reporting live connection speeds, negotiated standards or regional band availability
See the [Wi-Fi specification record](Documentation/connectivity/WiFi.md) for model values and sources

Capabilities include `.magSafe`, `.wirelessCharging`, `.fiveG` and `.dynamicIsland`

`.magSafe` means built-in iPhone magnetic wireless charging — Mac MagSafe power connectors and accessory attachment detection are outside its scope

`.wirelessCharging` includes iPhone Qi/MagSafe and the Apple Watch inductive charger, without implying that Apple Watch supports ordinary Qi pads or that iPads can receive wireless power

`.fiveG` describes hardware support, including Apple Watch RedCap, not current coverage or a cellular subscription
Wi-Fi-only iPads and GPS-only watches do not receive this capability
`DeviceDefinition.capabilities` contains the common base set; `capabilityOverrides` supplies complete sets for specific hardware identifiers or A-models
Use `Device.capabilities` or `has(_:)` for the resolved variant, including `Device(modelNumber:)` and `withModelNumber(_:)`

The [capability audit](Documentation/capabilities/evidence/Audit.md) records the results and at least two source links for each of the 150 model definitions, plus cellular variant evidence and the corrected Apple Watch SE 3 size mapping


Unknown identifiers are preserved and return an empty capability set, so `has` reports known support rather than guessing capabilities for future devices

## A-models and battery capacity

Every model currently in the catalogue has `modelNumbers` containing its regulatory A-identifiers

```swift
let esimPhone = Device(modelNumber: "A3256")
esimPhone.batteryCapacity?.milliampHours // 4252
esimPhone.isESIMOnly // true

let physicalSIMPhone = Device(modelNumber: "A3523")
physicalSIMPhone.batteryCapacity?.milliampHours // 3998

let phone = Device(identifier: "iPhone18,1")
phone.batteryCapacity // nil: this identifier covers different battery variants
phone.withModelNumber("A3256").batteryCapacity?.milliampHours // 4252

let duo = Device(identifier: "iPhone19,4")
duo.batteryCapacity?.batteryCount // 2
duo.batteryCapacity?.batteryMilliampHours // [2962, 1921]
duo.batteryCapacity?.milliampHours // 4883
duo.batteryCapacity?.batteryWattHours // [11.567, 7.506]
duo.batteryCapacity?.wattHours // 19.073
```

`BatteryCapacity` keeps mAh and Wh separately as optional numeric values, preserving fractional values and models where only Wh is known

Each definition stores a base `batteryCapacity` and an optional `eSIMOnlyBatteryCapacity` selected using `eSIMOnlyModelNumbers` — GPS/cellular Watch differences use `batteryCapacityOverrides` keyed by A-model

`Device.current.batteryCapacity` returns a value only when the model has a known, unambiguous capacity — supply the A-number with `Device.current.withModelNumber("A3256")` when required

The package cannot automatically read the current iPhone's A-model number through a public iOS API — A-model input must come from the caller, for example from the user reading Settings → General → About

Unknown A-models and A-models belonging to a different device return no definition or capacity — the library does not guess based on locale, active SIM or carrier

Battery values were migrated as supplied from Device Specs, including its existing mAh/Wh values — this migration is not an independent accuracy audit of those values




## Validation

```sh
swift test --scratch-path /tmp/device-package-build
```

## CPU specifications

```swift
Device.current.cpu?.description
Device.current.cpu?.maxClockSpeed
Device.current.cpu?.instructionSet
Device.current.cpu?.techNode
Device.current.cpu?.memoryType
Device.current.cpu?.neuralEngineTOPS
Device.current.cpu?.neuralEngineCores
Device.current.cpu?.l1DataCache
Device.current.cpu?.l1InstructionCache
Device.current.cpu?.l2Cache
Device.current.cpu?.l3Cache
```

Every catalogued device has a CPU mapping, available through hardware identifiers or A-model numbers on any platform — unknown devices return `nil`

Specifications are optional display strings migrated from Device Specs, retaining its units, ranges and estimates — this is not an independent accuracy audit

Empty values, placeholders and cache entries explicitly marked as uncertain (`???`) return `nil` — the cache fields represent L1 data, L1 instruction, L2 and L3, not four cache levels

Base M-series chips expose their base Neural Engine and clock values without the previous Max/Ultra annotations — separate chip variants have no detailed specifications until explicitly catalogued

The CPU enum includes Mac and accessory chips, but this does not add Mac or AirPods device definitions


## Water resistance

```swift
Device.current.waterResistance // e.g. "IP68 (IEC 60529)"
Device.current.waterResistanceDescription // e.g. "Up to 30 minutes and 6m deep"
```

Both properties are optional catalogue strings, also available on `DeviceDefinition` — `"None"` means the existing mapping explicitly lists no rating, while `nil` means it has not been mapped

Values and wording were migrated unchanged from Device Specs, including the existing iPhone 16e inconsistency (IP68 rating with a `"None"` description) — this migration is not an independent accuracy audit

iPhone Duo adds a verified IP68 rating and a 6-meter, 30-minute description, with [two source documents](Documentation/water-resistance/evidence/Audit.md) supporting both fields

Other models absent from those mappings remain unmapped — simulator lookup uses its simulated model through `Device.current`, and A-model lookup shares the same specifications

## Voltage

`Device.current.voltage` returns optional nominal catalogue voltage text, also available on `DeviceDefinition` — this is not a live voltage measurement

Values were migrated unchanged from Device Specs, preserving units, fractional precision and the Watch Series 3 GPS/cellular annotation — missing values and old `"-"` placeholders return `nil`

This migration is not an independent accuracy audit


## Announcement and release dates

`Device.current.announcementDate` and `Device.current.releaseDate` return optional `DeviceDate` values with Gregorian `year`, `month` and `day` components, without a time zone or time of day

- `announcementDate` is the first official announcement, including an initial preview before a later pricing event
- `releaseDate` is the earliest documented consumer availability in any market, excluding preorders; an officially scheduled future launch may also be recorded and does not imply the device is already available
- Dates describe the model family, not each regulatory A-number, later regional rollout, storage option, color or band collection
- Unknown exact dates remain `nil`, even when an announcement or a week/month of availability is known

The date audit checked all 150 catalogue definitions against Apple and a second source on 2026-10-19
All have announcement dates; exact release dates remain unknown for iPad mini 4 and iPod touch (7th generation), rather than reusing their order dates
See [iPhone evidence](Documentation/dates/evidence/iPhoneDates.md), [iPad evidence](Documentation/dates/evidence/iPadDates.md), [Apple Watch evidence](Documentation/dates/evidence/AppleWatchDates.md) and [iPod touch, Apple TV and HomePod evidence](Documentation/dates/evidence/OtherDeviceDates.md) for per-model dates, source links and exceptions

`DeviceDate` validates Gregorian components at initialization and supports chronological comparison
When displaying it with Foundation, use the same explicit Gregorian calendar and time zone for both conversion and formatting so the displayed day cannot shift

## Display and LiDAR

```swift
let device = Device.current
device.has(.lidar)
device.has(.roundedDisplayCorners)
device.displays // All built-in panels; nil for unknown hardware, [] for Apple TV/HomePod
device.display?.resolution // Native panel pixels, not the rendering buffer
device.display?.resolution.aspectRatio // Exact reduced width:height ratio
device.display?.ppi
device.display?.diagonal // Published inches; nil on Apple Watch
device.display?.estimatedDiagonal // Derived from pixels and PPI
```

All 150 catalogued definitions have an explicit display classification and audited LiDAR/rounded-corner capabilities
Folding devices preserve separate inner and outer panels; `display` returns the first panel rather than guessing which is active
The app must query live platform APIs separately for brightness and connected monitors
See the [display audit](Documentation/display/evidence/Audit.md) and [per-specification source records](Documentation/display/Evidence.json) for two or more sources per field, derived values, and source disagreements

## Specification documentation

See [Documentation](Documentation/README.md) for one human-readable file per specification, with model/chip values, recorded references and evidence gaps
