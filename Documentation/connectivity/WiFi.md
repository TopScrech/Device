# Wi-Fi

Verified mapping applied on 2026-10-29

`Device.wifiVersion` and `DeviceDefinition.wifiVersion` describe the maximum advertised Wi-Fi generation and IEEE standard for the model
They return optional display strings, such as `Wi-Fi 6 (802.11ax)` and `Wi-Fi 6E (802.11ax)`
Legacy models supporting b/g use `802.11b/g`, without assigning an unofficial numbered generation
Unknown devices and definitions created without a Wi-Fi value return `nil`

All 151 existing model definitions were mapped, including every catalogued case size and identifier
The value does not describe a live connection, throughput, channel width, MIMO configuration or locally available bands
Regional band restrictions remain separate from the advertised generation

## Source interpretation

- [Apple deployment specifications](https://support.apple.com/en-is/guide/deployment/-dep268652e6c/web) define Wi-Fi 4 as 802.11n, Wi-Fi 5 as 802.11ac, Wi-Fi 6/6E as 802.11ax and Wi-Fi 7 as 802.11be
- Wi-Fi 6E extends 802.11ax support into 6 GHz, rather than introducing a different IEEE standard
- The deployment table lists iPhone 15 and 15 Plus in conflicting groups — their individual technical specifications and [Apple's 6E compatibility exclusions](https://support.apple.com/en-ie/102285) confirm Wi-Fi 6, so the catalogue uses Wi-Fi 6 for these models
- All listed Apple Watch generations use Wi-Fi 4 despite different supported frequency bands
- HomePod mini 2 and Apple TV generations before HD are outside the current device catalogue and were not added as part of this specification change

## Model values and sources

| Device | Maximum advertised Wi-Fi | Source |
| --- | --- | --- |
| iPhone | 802.11b/g | [Apple specifications](https://support.apple.com/en-us/112445) |
| iPhone 3G | 802.11b/g | [Apple specifications](https://support.apple.com/en-us/112496) |
| iPhone 3GS | 802.11b/g | [Apple specifications](https://support.apple.com/en-us/112307) |
| iPhone 4 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP587) |
| iPhone 4s | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP643) |
| iPhone 5 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP655) |
| iPhone 5c | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP684) |
| iPhone 5s | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP685) |
| iPhone 6 | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP705) |
| iPhone 6 Plus | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP706) |
| iPhone 6s | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP726) |
| iPhone 6s Plus | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP727) |
| iPhone SE (1st generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP738) |
| iPhone 7 | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP743) |
| iPhone 7 Plus | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP744) |
| iPhone 8 | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP767) |
| iPhone 8 Plus | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP768) |
| iPhone X | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP770) |
| iPhone XS | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP779) |
| iPhone XS Max | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP780) |
| iPhone XR | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP781) |
| iPhone 11 | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP804) |
| iPhone 11 Pro | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP805) |
| iPhone 11 Pro Max | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP806) |
| iPhone SE (2nd generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP820) |
| iPhone 12 | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP830) |
| iPhone 12 mini | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP829) |
| iPhone 12 Pro | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP831) |
| iPhone 12 Pro Max | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP832) |
| iPhone 13 | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP851) |
| iPhone 13 mini | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP847) |
| iPhone 13 Pro | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP852) |
| iPhone 13 Pro Max | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP848) |
| iPhone SE (3rd generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP867) |
| iPhone 14 | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP873) |
| iPhone 14 Plus | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP874) |
| iPhone 14 Pro | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP875) |
| iPhone 14 Pro Max | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP876) |
| iPhone 15 | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP901) |
| iPhone 15 Plus | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP902) |
| iPhone 15 Pro | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP903) |
| iPhone 15 Pro Max | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP904) |
| iPhone 16 | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/121029) |
| iPhone 16 Plus | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/121030) |
| iPhone 16 Pro | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/121031) |
| iPhone 16 Pro Max | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/121032) |
| iPhone 16e | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/122208) |
| iPhone 17 | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/125089) |
| iPhone Air | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/125092) |
| iPhone 17 Pro | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/125090) |
| iPhone 17 Pro Max | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/125091) |
| iPhone 17e | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/126470) |
| iPhone 18 Pro | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/en-us/148590) |
| iPhone 18 Pro Max | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/en-us/148591) |
| iPhone Duo | Wi-Fi 7 (802.11be) | [Apple specifications](https://www.apple.com/iphone-duo/specs/) |
| iPad | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP580) |
| iPad 2 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP622) |
| iPad (3rd generation) | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP647) |
| iPad mini | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP661) |
| iPad (4th generation) | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP662) |
| iPad Air | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP692) |
| iPad mini 2 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP693) |
| iPad mini 3 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP709) |
| iPad mini 4 | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP725) |
| iPad Air 2 | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP708) |
| iPad (5th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP751) |
| iPad Pro (9.7-inch) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP739) |
| iPad Pro (12.9-inch) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP723) |
| iPad Pro 12.9-inch (2nd generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP761) |
| iPad Pro (10.5-inch) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP762) |
| iPad (6th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP774) |
| iPad Pro 11-inch | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP784) |
| iPad Pro 12.9-inch (3rd generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP785) |
| iPad Air (3rd generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP787) |
| iPad mini (5th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP788) |
| iPad (7th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP807) |
| iPad Pro 11-inch (2nd generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP814) |
| iPad Pro 12.9-inch (4th generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP815) |
| iPad (8th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/en-us/118451) |
| iPad (9th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP849) |
| iPad Air (4th generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP828) |
| iPad Air (5th generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP866) |
| iPad (10th generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP884) |
| iPad Pro 11-inch (3rd generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP843) |
| iPad Pro 12.9-inch (5th generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP844) |
| iPad mini (6th generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP850) |
| iPad Pro 11-inch (4th generation) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP882) |
| iPad Pro 12.9-inch (6th generation) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP883) |
| iPad Air 11-inch (M2) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/119894) |
| iPad Air 13-inch (M2) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/119893) |
| iPad Pro 11-inch (M4) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/en-us/119892) |
| iPad Pro 13-inch (M4) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/en-us/119891) |
| iPad mini (A17 Pro) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/en-us/121456) |
| iPad Air 13-inch (M3) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/122242) |
| iPad Air 11-inch (M3) | Wi-Fi 6E (802.11ax) | [Apple specifications](https://support.apple.com/122241) |
| iPad (A16) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/122240) |
| iPad Pro 11-inch (M5) | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/en-us/125406) |
| iPad Pro 13-inch (M5) | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/en-us/125407) |
| iPad Air 11-inch (M4) | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/126471) |
| iPad Air 13-inch (M4) | Wi-Fi 7 (802.11be) | [Apple specifications](https://support.apple.com/126472) |
| iPad mini (A20 Pro) | Wi-Fi 7 (802.11be) | [Apple specifications](https://www.apple.com/ie/ipad-mini/specs/) |
| iPod touch | 802.11b/g | [Apple specifications](https://support.apple.com/en-us/112532) |
| iPod touch (2nd generation) | 802.11b/g | [Apple specifications](https://support.apple.com/en-us/112319) |
| iPod touch (3rd generation) | 802.11b/g | [Apple specifications](https://support.apple.com/en-us/112461) |
| iPod touch (4th generation) | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/112431) |
| iPod touch (5th generation) | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/112021) |
| iPod touch (6th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/en-us/112023) |
| iPod touch (7th generation) | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/en-us/111961) |
| Apple TV HD | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP724) |
| Apple TV 4K | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP769) |
| Apple TV 4K (2nd generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP845) |
| Apple TV 4K (3rd generation) | Wi-Fi 6 (802.11ax) | [Apple specifications](https://support.apple.com/kb/SP886) |
| HomePod | Wi-Fi 5 (802.11ac) | [Apple specifications](https://support.apple.com/kb/SP773) |
| HomePod mini | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/111914) |
| HomePod (2nd generation) | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/111843) |
| Apple Watch (1st generation) 38mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP735) |
| Apple Watch (1st generation) 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP735) |
| Apple Watch Series 1 38mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP745) |
| Apple Watch Series 1 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP745) |
| Apple Watch Series 2 38mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP746) |
| Apple Watch Series 2 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP746) |
| Apple Watch Series 3 38mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP766) |
| Apple Watch Series 3 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP766) |
| Apple Watch Series 4 40mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP778) |
| Apple Watch Series 4 44mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP778) |
| Apple Watch Series 5 40mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP808) |
| Apple Watch Series 5 44mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP808) |
| Apple Watch Series 6 40mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP826) |
| Apple Watch Series 6 44mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP826) |
| Apple Watch SE 40mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP827) |
| Apple Watch SE 44mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP827) |
| Apple Watch Series 7 41mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP860) |
| Apple Watch Series 7 45mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP860) |
| Apple Watch Series 8 41mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP878) |
| Apple Watch Series 8 45mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP878) |
| Apple Watch SE (2nd generation) 40mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP877) |
| Apple Watch SE (2nd generation) 44mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP877) |
| Apple Watch Ultra | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP879) |
| Apple Watch Ultra2 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/111832) |
| Apple Watch Ultra 3 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/125095) |
| Apple Watch Ultra 4 | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/148758) |
| Apple Watch Series 9 41mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP905) |
| Apple Watch Series 9 45mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/kb/SP905) |
| Apple Watch Series 10 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/121202) |
| Apple Watch Series 10 46mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/121202) |
| Apple Watch Series 11 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/125093) |
| Apple Watch Series 11 46mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/125093) |
| Apple Watch Series 12 42mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/148589) |
| Apple Watch Series 12 46mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/148589) |
| Apple Watch SE (3rd generation) 40mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/125094) |
| Apple Watch SE (3rd generation) 44mm | Wi-Fi 4 (802.11n) | [Apple specifications](https://support.apple.com/en-us/125094) |
