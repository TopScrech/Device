# Original provenance notes

Historical source-bearing prose moved from the root README on 2026-10-24

These migration notes are not a current accuracy audit; use the per-spec tables for current catalogue values

The original mapping cites [EveryMac](https://everymac.com/systems/apple/iphone/iphone-faq/iphone-bluetooth-support-by-model.html) and [Apple's iPhone comparison](https://apple.com/iphone/compare)

Model capabilities are maintained directly in Swift, informed by [DeviceKit](https://github.com/devicekit/DeviceKit) and [Device](https://github.com/kudit/Device)

Duo's eSIM-only configuration and two battery capacities were supplied by the project owner — the supplied screenshots show 2962 mAh / 11.567 Wh and 1921 mAh / 7.506 Wh, totaling 4883 mAh / 19.073 Wh, with [this video](https://youtu.be/ZDXOxRLZRQo) supplied as the source — missing capacity data remains `nil`, including models without a built-in battery

A-model data was cross-referenced from [kudit/Device's model catalogue](https://github.com/kudit/Device/tree/main/Sources/Models) and Apple's model guides for [iPhone](https://support.apple.com/en-us/108044), [iPad](https://support.apple.com/en-us/108043), [Watch](https://support.apple.com/en-us/108056) and [iPod](https://support.apple.com/en-us/103823)

SIM configurations use Apple's iPhone model guide — eSIM-only does not automatically imply a larger battery, and only explicitly mapped higher capacities are selected

CPU identities were adapted from [kudit/Device](https://github.com/kudit/Device) and display names from [DeviceKit](https://github.com/devicekit/DeviceKit), with changes to naming, optional unknown values and platform-independent availability — upstream license notices are in `Licenses`

iPhone Duo stores a derived nominal voltage of `3.91 V`, supplied by the project owner using `(11.567 + 7.506) * 1000 / (2962 + 1921) ≈ 3.906 V`, rounded to two decimals — the battery energy and capacity values come from the supplied screenshots with [this video](https://youtu.be/ZDXOxRLZRQo) as the source
