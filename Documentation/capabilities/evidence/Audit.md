# Device capability audit

Checked 2026-10-23 across all 150 model definitions

## Meaning

- `wirelessCharging`: the device receives power inductively, including iPhone Qi/MagSafe and the Apple Watch magnetic charger; this does not claim that Apple Watch accepts ordinary Qi pads, or that an iPad which charges Apple Pencil can itself charge wirelessly
- `fiveG`: hardware support for 5G, including Apple Watch RedCap; it does not assert service, coverage, a subscription, or mmWave support
- `dynamicIsland`: the system Dynamic Island interface
- A blank capability set means no catalogued support; unknown devices never inherit capabilities from an identifier prefix
- Base capabilities apply to all variants; complete override sets distinguish cellular hardware identifiers and regulatory A-models from Wi-Fi/GPS-only variants
- A supplied A-model selects its variant within the matched definition; an A-model from a different definition yields no definition or capabilities

## Sources and review method

Every row links at least two sources actually inspected for this audit
Apple technical specifications were checked against the pinned DeviceKit data where it has a matching device, with Apple announcements and support guides covering devices absent from DeviceKit and Apple Watch charging/5G
These are two sources, not necessarily two independent publishers: Apple specifications and Apple announcements are both first-party Apple sources
DeviceKit is a cross-check, not a runtime dependency of this package

The specification sections on display, power and cellular networks take precedence over generic footnotes and accessory descriptions
Unsupported means the model's listed hardware lacks the feature, not merely that a search for its name returned no result
In particular, 5GHz Wi-Fi, weights ending in “5g”, generic 5G footnotes on older iPads, and Apple Pencil charging do not establish these capabilities

Additional cross-checks used throughout:

- [Apple iPhone wireless charging requirements](https://support.apple.com/en-us/108377): iPhone 8 or later, excluding the earlier first-generation SE
- [Apple iPhone 5G requirements](https://support.apple.com/en-us/108383): supported iPhone generations, with SE 3 separately confirmed in its specifications
- [Apple Watch charging guide](https://support.apple.com/guide/watch/charge-apple-watch-apd2b717523a/watchos): inductive magnetic charging, corroborated by each model's charging cable specifications
- [Apple Watch cellular guide](https://support.apple.com/en-us/119601): 2024 and earlier cellular watches are LTE/UMTS; Series 11 and later, SE 3, and Ultra 3 and later add 5G
- [Apple iPad identification](https://support.apple.com/en-us/108043) and [Apple Watch identification](https://support.apple.com/en-us/108056): GPS/Wi-Fi versus cellular A-models
- [The Apple Wiki hardware identifier table](https://theapplewiki.com/wiki/Models): hardware identifier to A-model correspondence for cellular variants, cross-checked against the Apple identification pages
- [Apple iPad cellular bands](https://www.apple.com/ae/ipad/cellular/networks/) and [China eSIM guide](https://support.apple.com/en-us/104991): A2996 is the cellular iPad mini A17 Pro, despite the identification page omitting “Wi-Fi + Cellular” on that line

## Catalogue results

“Yes” applies to every variant in that row; “Cellular only” is resolved using the explicit variant table below
“No” is a negative finding for these catalogued models, not a statement about future devices

| Model | Wireless charging | 5G | Dynamic Island | Source 1 | Source 2 |
| --- | --- | --- | --- | --- | --- |
| HomePod | No | No | No | [Apple specifications](https://support.apple.com/kb/SP773) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| HomePod mini | No | No | No | [Apple specifications](https://support.apple.com/en-us/111914) | [Apple announcement](https://www.apple.com/newsroom/2020/10/apple-introduces-homepod-mini-a-powerful-smart-speaker-with-amazing-sound/) |
| HomePod (2nd generation) | No | No | No | [Apple specifications](https://support.apple.com/en-us/111843) | [Apple announcement](https://www.apple.com/newsroom/2023/01/apple-introduces-the-new-homepod-with-breakthrough-sound-and-intelligence/) |
| Apple TV HD | No | No | No | [Apple specifications](https://support.apple.com/kb/SP724) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| Apple TV 4K | No | No | No | [Apple specifications](https://support.apple.com/kb/SP769) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| Apple TV 4K (2nd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP845) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| Apple TV 4K (3rd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP886) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| Apple Watch (1st generation) 38mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP735) | [Apple announcement](https://www.apple.com/newsroom/2014/09/09Apple-Unveils-Apple-Watch-Apples-Most-Personal-Device-Ever/) |
| Apple Watch (1st generation) 42mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP735) | [Apple announcement](https://www.apple.com/newsroom/2014/09/09Apple-Unveils-Apple-Watch-Apples-Most-Personal-Device-Ever/) |
| Apple Watch Series 1 38mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP745) | [Apple announcement](https://www.apple.com/newsroom/2016/09/apple-introduces-apple-watch-series-2/) |
| Apple Watch Series 1 42mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP745) | [Apple announcement](https://www.apple.com/newsroom/2016/09/apple-introduces-apple-watch-series-2/) |
| Apple Watch Series 2 38mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP746) | [Apple announcement](https://www.apple.com/newsroom/2016/09/apple-introduces-apple-watch-series-2/) |
| Apple Watch Series 2 42mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP746) | [Apple announcement](https://www.apple.com/newsroom/2016/09/apple-introduces-apple-watch-series-2/) |
| Apple Watch Series 3 38mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP766) | [Apple announcement](https://www.apple.com/newsroom/2017/09/apple-watch-series-3-features-built-in-cellular-and-more/) |
| Apple Watch Series 3 42mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP766) | [Apple announcement](https://www.apple.com/newsroom/2017/09/apple-watch-series-3-features-built-in-cellular-and-more/) |
| Apple Watch Series 4 40mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP778) | [Apple announcement](https://www.apple.com/newsroom/2018/09/redesigned-apple-watch-series-4-revolutionizes-communication-fitness-and-health/) |
| Apple Watch Series 4 44mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP778) | [Apple announcement](https://www.apple.com/newsroom/2018/09/redesigned-apple-watch-series-4-revolutionizes-communication-fitness-and-health/) |
| Apple Watch Series 5 40mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP808) | [Apple announcement](https://www.apple.com/newsroom/2019/09/apple-unveils-apple-watch-series-5/) |
| Apple Watch Series 5 44mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP808) | [Apple announcement](https://www.apple.com/newsroom/2019/09/apple-unveils-apple-watch-series-5/) |
| Apple Watch Series 6 40mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP826) | [Apple announcement](https://www.apple.com/newsroom/2020/09/apple-watch-series-6-delivers-breakthrough-wellness-and-fitness-capabilities/) |
| Apple Watch Series 6 44mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP826) | [Apple announcement](https://www.apple.com/newsroom/2020/09/apple-watch-series-6-delivers-breakthrough-wellness-and-fitness-capabilities/) |
| Apple Watch SE 40mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP827) | [Apple announcement](https://www.apple.com/newsroom/2020/09/apple-watch-se-the-ultimate-combination-of-design-function-and-value/) |
| Apple Watch SE 44mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP827) | [Apple announcement](https://www.apple.com/newsroom/2020/09/apple-watch-se-the-ultimate-combination-of-design-function-and-value/) |
| Apple Watch Series 7 41mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP860) | [Apple announcement](https://www.apple.com/newsroom/2021/09/apple-reveals-apple-watch-series-7-featuring-the-largest-most-advanced-display/) |
| Apple Watch Series 7 45mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP860) | [Apple announcement](https://www.apple.com/newsroom/2021/09/apple-reveals-apple-watch-series-7-featuring-the-largest-most-advanced-display/) |
| Apple Watch Series 8 41mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP878) | [Apple announcement](https://www.apple.com/newsroom/2022/09/apple-reveals-apple-watch-series-8-and-the-new-apple-watch-se/) |
| Apple Watch Series 8 45mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP878) | [Apple announcement](https://www.apple.com/newsroom/2022/09/apple-reveals-apple-watch-series-8-and-the-new-apple-watch-se/) |
| Apple Watch SE (2nd generation) 40mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP877) | [Apple announcement](https://www.apple.com/newsroom/2022/09/apple-reveals-apple-watch-series-8-and-the-new-apple-watch-se/) |
| Apple Watch SE (2nd generation) 44mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP877) | [Apple announcement](https://www.apple.com/newsroom/2022/09/apple-reveals-apple-watch-series-8-and-the-new-apple-watch-se/) |
| Apple Watch Ultra | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP879) | [Apple announcement](https://www.apple.com/newsroom/2022/09/introducing-apple-watch-ultra/) |
| Apple Watch Ultra2 | Yes | No | No | [Apple specifications](https://support.apple.com/en-us/111832) | [Apple announcement](https://www.apple.com/newsroom/2023/09/apple-unveils-apple-watch-ultra-2/) |
| Apple Watch Ultra 3 | Yes | Yes | No | [Apple specifications](https://support.apple.com/en-us/125095) | [Apple announcement](https://www.apple.com/newsroom/2025/09/introducing-apple-watch-ultra-3/) |
| Apple Watch Ultra 4 | Yes | Yes | No | [Apple specifications](https://support.apple.com/en-us/148758) | [Apple announcement](https://www.apple.com/newsroom/2026/09/apple-unveils-apple-watch-ultra-4/) |
| Apple Watch Series 9 41mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP905) | [Apple announcement](https://www.apple.com/newsroom/2023/09/apple-introduces-the-advanced-new-apple-watch-series-9/) |
| Apple Watch Series 9 45mm | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP905) | [Apple announcement](https://www.apple.com/newsroom/2023/09/apple-introduces-the-advanced-new-apple-watch-series-9/) |
| Apple Watch Series 10 42mm | Yes | No | No | [Apple specifications](https://support.apple.com/en-us/121202) | [Apple announcement](https://www.apple.com/newsroom/2024/09/introducing-apple-watch-series-10/) |
| Apple Watch Series 10 46mm | Yes | No | No | [Apple specifications](https://support.apple.com/en-us/121202) | [Apple announcement](https://www.apple.com/newsroom/2024/09/introducing-apple-watch-series-10/) |
| Apple Watch Series 11 42mm | Yes | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/125093) | [Apple announcement](https://www.apple.com/newsroom/2025/09/apple-debuts-apple-watch-series-11-featuring-groundbreaking-health-insights/) |
| Apple Watch Series 11 46mm | Yes | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/125093) | [Apple announcement](https://www.apple.com/newsroom/2025/09/apple-debuts-apple-watch-series-11-featuring-groundbreaking-health-insights/) |
| Apple Watch Series 12 42mm | Yes | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/148589) | [Apple announcement](https://www.apple.com/newsroom/2026/09/introducing-apple-watch-series-12-with-the-all-new-health-sensing-system/) |
| Apple Watch Series 12 46mm | Yes | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/148589) | [Apple announcement](https://www.apple.com/newsroom/2026/09/introducing-apple-watch-series-12-with-the-all-new-health-sensing-system/) |
| Apple Watch SE (3rd generation) 40mm | Yes | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/125094) | [Apple announcement](https://www.apple.com/newsroom/2025/09/apple-introduces-apple-watch-se-3/) |
| Apple Watch SE (3rd generation) 44mm | Yes | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/125094) | [Apple announcement](https://www.apple.com/newsroom/2025/09/apple-introduces-apple-watch-se-3/) |
| iPod touch | No | No | No | [Apple specifications](https://support.apple.com/kb/SP3) | [Apple announcement](https://www.apple.com/newsroom/2007/09/05Apple-Unveils-iPod-touch/) |
| iPod touch (2nd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP496) | [Apple announcement](https://www.apple.com/uk/newsroom/2008/09/09Apple-Introduces-New-iPod-touch/) |
| iPod touch (3rd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP570) | [Apple announcement](https://www.apple.com/newsroom/2009/09/09Apple-Introduces-New-iPod-touch-Lineup/) |
| iPod touch (4th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP594) | [Apple announcement](https://www.apple.com/newsroom/2010/09/01Apple-Introduces-New-iPod-touch/) |
| iPod touch (5th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP657) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPod touch (6th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP720) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPod touch (7th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP796) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone | No | No | No | [Apple specifications](https://support.apple.com/en-us/112445) | [Apple announcement](https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/) |
| iPhone 3G | No | No | No | [Apple specifications](https://support.apple.com/en-us/112496) | [Apple announcement](https://www.apple.com/newsroom/2008/06/09Apple-Introduces-the-New-iPhone-3G/) |
| iPhone 3GS | No | No | No | [Apple specifications](https://support.apple.com/en-us/112307) | [Apple announcement](https://www.apple.com/newsroom/2009/06/08Apple-Announces-the-New-iPhone-3GS-The-Fastest-Most-Powerful-iPhone-Yet/) |
| iPhone 4 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP587) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 4s | No | No | No | [Apple specifications](https://support.apple.com/kb/SP643) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 5 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP655) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 5c | No | No | No | [Apple specifications](https://support.apple.com/kb/SP684) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 5s | No | No | No | [Apple specifications](https://support.apple.com/kb/SP685) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 6 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP705) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 6 Plus | No | No | No | [Apple specifications](https://support.apple.com/kb/SP706) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 6s | No | No | No | [Apple specifications](https://support.apple.com/kb/SP726) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 6s Plus | No | No | No | [Apple specifications](https://support.apple.com/kb/SP727) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone SE (1st generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP738) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 7 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP743) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 7 Plus | No | No | No | [Apple specifications](https://support.apple.com/kb/SP744) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 8 | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP767) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 8 Plus | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP768) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone X | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP770) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone XS | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP779) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone XS Max | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP780) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone XR | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP781) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 11 | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP804) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 11 Pro | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP805) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 11 Pro Max | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP806) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone SE (2nd generation) | Yes | No | No | [Apple specifications](https://support.apple.com/kb/SP820) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 12 | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP830) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 12 mini | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP829) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 12 Pro | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP831) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 12 Pro Max | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP832) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 13 | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP851) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 13 mini | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP847) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 13 Pro | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP852) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 13 Pro Max | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP848) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone SE (3rd generation) | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP867) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 14 | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP873) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 14 Plus | Yes | Yes | No | [Apple specifications](https://support.apple.com/kb/SP874) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 14 Pro | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/kb/SP875) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 14 Pro Max | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/kb/SP876) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 15 | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/kb/SP901) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 15 Plus | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/kb/SP902) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 15 Pro | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/kb/SP903) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 15 Pro Max | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/kb/SP904) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 16 | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/121029) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 16 Plus | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/121030) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 16 Pro | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/121031) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 16 Pro Max | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/121032) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 16e | Yes | Yes | No | [Apple specifications](https://support.apple.com/122208) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 17 | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/125089) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone Air | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/125092) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 17 Pro | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/125090) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 17 Pro Max | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/125091) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 17e | Yes | Yes | No | [Apple specifications](https://support.apple.com/126470) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 18 Pro | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/en-us/148590) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone 18 Pro Max | Yes | Yes | Yes | [Apple specifications](https://support.apple.com/en-us/148591) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPhone Duo | Yes | Yes | Yes | [Apple specifications](https://www.apple.com/iphone-duo/specs/) | [Apple announcement](https://www.apple.com/newsroom/2026/09/apple-unveils-iphone-duo/) |
| iPad | No | No | No | [Apple specifications](https://support.apple.com/kb/SP580) | [Apple announcement](https://www.apple.com/newsroom/2010/01/27Apple-Launches-iPad/) |
| iPad 2 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP622) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (3rd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP647) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini | No | No | No | [Apple specifications](https://support.apple.com/kb/SP661) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (4th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP662) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air | No | No | No | [Apple specifications](https://support.apple.com/kb/SP692) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini 2 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP693) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini 3 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP709) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini 4 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP725) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 2 | No | No | No | [Apple specifications](https://support.apple.com/kb/SP708) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (5th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP751) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro (9.7-inch) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP739) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro (12.9-inch) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP723) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 12.9-inch (2nd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP761) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro (10.5-inch) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP762) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (6th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP774) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 11-inch | No | No | No | [Apple specifications](https://support.apple.com/kb/SP784) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 12.9-inch (3rd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP785) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air (3rd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP787) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini (5th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP788) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (7th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP807) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 11-inch (2nd generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP814) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 12.9-inch (4th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP815) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (8th generation) | No | No | No | [Apple specifications](https://support.apple.com/en-us/118451) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (9th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP849) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air (4th generation) | No | No | No | [Apple specifications](https://support.apple.com/kb/SP828) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air (5th generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP866) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (10th generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP884) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 11-inch (3rd generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP843) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 12.9-inch (5th generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP844) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini (6th generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP850) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 11-inch (4th generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP882) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 12.9-inch (6th generation) | No | Cellular only | No | [Apple specifications](https://support.apple.com/kb/SP883) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 11-inch (M2) | No | Cellular only | No | [Apple specifications](https://support.apple.com/119894) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 13-inch (M2) | No | Cellular only | No | [Apple specifications](https://support.apple.com/119893) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 11-inch (M4) | No | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/119892) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 13-inch (M4) | No | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/119891) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad mini (A17 Pro) | No | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/121456) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 13-inch (M3) | No | Cellular only | No | [Apple specifications](https://support.apple.com/122242) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 11-inch (M3) | No | Cellular only | No | [Apple specifications](https://support.apple.com/122241) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad (A16) | No | Cellular only | No | [Apple specifications](https://support.apple.com/122240) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 11-inch (M5) | No | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/125406) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Pro 13-inch (M5) | No | Cellular only | No | [Apple specifications](https://support.apple.com/en-us/125407) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 11-inch (M4) | No | Cellular only | No | [Apple specifications](https://support.apple.com/126471) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |
| iPad Air 13-inch (M4) | No | Cellular only | No | [Apple specifications](https://support.apple.com/126472) | [DeviceKit catalogue](https://github.com/devicekit/DeviceKit/blob/19528aa07e1426626ea9fb2c4a161edf43c4f9e8/Source/Device.swift.gyb) |

## Cellular variant resolution

Only the identifiers and A-models listed here receive 5G for mixed model definitions
All other variants in those definitions retain their base capabilities
Ultra 3 and Ultra 4 are cellular-only and have 5G in the base set

| Definition | 5G hardware identifiers | 5G A-models |
| --- | --- | --- |
| Apple Watch Series 11 42mm | Watch7,19 | A3335, A3452 |
| Apple Watch Series 11 46mm | Watch7,20 | A3337, A3453 |
| Apple Watch Series 12 42mm | Watch8,4 | A3582, A3586 |
| Apple Watch Series 12 46mm | Watch8,5 | A3587, A3588 |
| Apple Watch SE (3rd generation) 40mm | Watch7,15 | A3326, A3327 |
| Apple Watch SE (3rd generation) 44mm | Watch7,16 | A3328, A3329 |
| iPad Air (5th generation) | iPad13,17 | A2589, A2591 |
| iPad (10th generation) | iPad13,19 | A2757, A2777, A3162 |
| iPad Pro 11-inch (3rd generation) | iPad13,6, iPad13,7 | A2301, A2459, A2460 |
| iPad Pro 12.9-inch (5th generation) | iPad13,10, iPad13,11 | A2379, A2461, A2462 |
| iPad mini (6th generation) | iPad14,2 | A2568, A2569 |
| iPad Pro 11-inch (4th generation) | iPad14,4 | A2435, A2761, A2762 |
| iPad Pro 12.9-inch (6th generation) | iPad14,6 | A2437, A2764, A2766 |
| iPad Air 11-inch (M2) | iPad14,9 | A2903, A2904 |
| iPad Air 13-inch (M2) | iPad14,11 | A2899, A2900 |
| iPad Pro 11-inch (M4) | iPad16,4 | A2837, A3006 |
| iPad Pro 13-inch (M4) | iPad16,6 | A2926, A3007 |
| iPad mini (A17 Pro) | iPad16,2 | A2995, A2996 |
| iPad Air 13-inch (M3) | iPad15,6 | A3269, A3271 |
| iPad Air 11-inch (M3) | iPad15,4 | A3267, A3270 |
| iPad (A16) | iPad15,8 | A3355, A3356 |
| iPad Pro 11-inch (M5) | iPad17,2 | A3358, A3359 |
| iPad Pro 13-inch (M5) | iPad17,4 | A3361, A3362 |
| iPad Air 11-inch (M4) | iPad16,9 | A3460, A3463 |
| iPad Air 13-inch (M4) | iPad16,11 | A3462, A3464 |

## Corrections and exceptions

- iPhone Duo supports wireless charging, 5G and Dynamic Island; Apple specifications and its announcement establish this even though DeviceKit 5.9.0 has no Duo entry
- iPhone SE 2 supports wireless charging but not 5G; SE 3 adds 5G, neither has Dynamic Island
- iPhone 16e and 17e have wireless charging and 5G but no Dynamic Island
- Standard iPhone 14/14 Plus lack Dynamic Island; 14 Pro/Pro Max have it
- Apple Watch SE 3 entries previously grouped the two GPS sizes together and the two cellular sizes together; corrected 40 mm to Watch7,13/Watch7,15 and 44 mm to Watch7,14/Watch7,16, including the matching A-models
- iPad Pro M1 11-inch has two Wi-Fi identifiers (iPad13,4/5) and two cellular identifiers (iPad13,6/7); the 12.9-inch equivalent uses iPad13,8/9 and iPad13,10/11 respectively
- None of the 45 iPad definitions receives wirelessCharging or dynamicIsland
- All 36 Apple Watch definitions receive wirelessCharging, without implying Qi compatibility
- All seven iPod touch, four Apple TV and three HomePod definitions lack these three capabilities
