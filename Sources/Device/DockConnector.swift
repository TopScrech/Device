/// The built-in docking connector, none for devices without one, or unknown when not mapped
public enum DockConnector: Hashable, Sendable {
    case usbC, lightning, thirtyPin, none, unknown
}
