/// Native panel pixel dimensions, independent of orientation and rendering scale
public struct DisplayResolution: Hashable, Sendable {
    public let width: Int
    public let height: Int

    public init(width: Int, height: Int) {
        precondition(width > 0 && height > 0)
        self.width = width
        self.height = height
    }

    /// Exact reduced pixel ratio, not a rounded marketing aspect ratio
    public var aspectRatio: DisplayResolution {
        var a = width
        var b = height
        while b != 0 {
            (a, b) = (b, a % b)
        }
        return .init(width: width / a, height: height / a)
    }
}
