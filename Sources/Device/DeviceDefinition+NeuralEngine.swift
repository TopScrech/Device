extension DeviceDefinition {
    /// Resolves a nominal storage configuration without guessing from formatted disk capacity
    public func neuralEngineCores(storageGigabytes: Int? = nil) -> String? {
        guard !neuralEngineCoresByStorage.isEmpty else { return cpu?.neuralEngineCores }
        if let storageGigabytes {
            return neuralEngineCoresByStorage[storageGigabytes].map { String($0) }
        }
        let counts = Set(neuralEngineCoresByStorage.values).sorted()
        return counts.count == 1 ? counts.first.map { String($0) }
            : counts.map { String($0) }.joined(separator: " or ") + ", depending on storage"
    }
}
