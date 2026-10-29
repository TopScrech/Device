extension Device {
    /// Maximum advertised Wi-Fi generation and IEEE standard, or nil when not mapped
    public var wifiVersion: String? {
        definition?.wifiVersion
    }
}
