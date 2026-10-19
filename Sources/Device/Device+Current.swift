#if canImport(Darwin)
import Darwin
import Foundation

extension Device {
    /// The current hardware model, or the simulated model when running in Simulator
    public static let current = Device(identifier: currentIdentifier)

    private static var currentIdentifier: String {
#if targetEnvironment(simulator)
        if let identifier = ProcessInfo.processInfo.environment["SIMULATOR_MODEL_IDENTIFIER"],
           !identifier.isEmpty {
            return identifier
        }
#endif

        var systemInfo = utsname()
        guard uname(&systemInfo) == 0 else {
            return "unknown"
        }

        return withUnsafeBytes(of: systemInfo.machine) { bytes in
            String(decoding: bytes.prefix { $0 != 0 }, as: UTF8.self)
        }
    }
}
#endif
