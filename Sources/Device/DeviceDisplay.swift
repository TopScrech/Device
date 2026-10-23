/// Catalogue data for one built-in pixel display, not a connected monitor or status light
public struct DeviceDisplay: Hashable, Sendable {
    public let role: DisplayRole
    /// Published diagonal in inches, nil when Apple does not publish a diagonal
    public let diagonal: Double?
    public let resolution: DisplayResolution
    /// Catalogue pixel density, not the system's logical point scale
    public let ppi: Int

    public init(role: DisplayRole = .primary, diagonal: Double?, resolution: DisplayResolution, ppi: Int) {
        precondition(ppi > 0)
        precondition(diagonal.map { $0 > 0 && $0.isFinite } ?? true)
        self.role = role
        self.diagonal = diagonal
        self.resolution = resolution
        self.ppi = ppi
    }

    /// Estimated rectangular diagonal from native pixels and density, useful for Apple Watch
    /// This does not measure the visible area lost to rounded corners
    public var estimatedDiagonal: Double {
        let width = Double(resolution.width)
        let height = Double(resolution.height)
        return (width * width + height * height).squareRoot() / Double(ppi)
    }
}
