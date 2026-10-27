extension Device {
    /// Pass the advertised storage capacity in GB when it is known
    public func neuralEngineCores(storageGigabytes: Int? = nil) -> String? {
        definition?.neuralEngineCores(storageGigabytes: storageGigabytes)
    }
}
