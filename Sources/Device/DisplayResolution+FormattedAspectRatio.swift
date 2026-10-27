import Foundation

extension DisplayResolution {
    /// Landscape ratio for presentation, independent of pixel orientation
    public var formattedAspectRatio: String {
        let ratio = Double(max(width, height)) / Double(min(width, height))
        let conventionalRatios: [(Double, Double)] = [
            (19.5, 9), (16, 9), (16, 10), (3, 2), (4, 3), (5, 4), (1, 1)
        ]
        let style = FloatingPointFormatStyle<Double>.number
            .locale(Locale(identifier: "en_US_POSIX"))
            .grouping(.never)
        if let closest = conventionalRatios.min(by: {
            abs(ratio - $0.0 / $0.1) < abs(ratio - $1.0 / $1.1)
        }), abs(ratio / (closest.0 / closest.1) - 1) < 0.005 {
            let format = style.precision(.fractionLength(0...1))
            return "\(closest.0.formatted(format)):\(closest.1.formatted(format))"
        }
        return "\(ratio.formatted(style.precision(.fractionLength(0...2)))):1"
    }
}
