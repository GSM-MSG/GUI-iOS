import UIKit

public extension UIColor {
    enum GUIColorSystem {
        case system(System)
        case gray(Gray)
    }

    static func gui(_ style: GUIColorSystem) -> UIColor {
        switch style {
        case let .system(system):
            return system.color

        case let .gray(gray):
            return gray.color
        }
    }
}
