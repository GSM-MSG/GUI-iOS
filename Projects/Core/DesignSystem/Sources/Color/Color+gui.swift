import UIKit

public extension UIColor {
    enum GUIColorSystem {
        case system(System)
    }

    public static func gui(_ style: GUIColorSystem) -> UIColor {
        switch style {
        case let .system(system):
            return system.color
        }
    }
}
