import UIKit

public extension UIColor {
    enum GUIColorSystem {
        case system(System)
        case primary(Primary)
    }

    static func gui(_ style: GUIColorSystem) -> UIColor {
        switch style {
        case let .system(system):
            return system.color
        case let .primary(primary):
            return primary.color
        }
    }
}
