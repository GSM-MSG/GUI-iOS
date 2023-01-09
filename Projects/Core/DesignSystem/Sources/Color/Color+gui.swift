import SwiftUI

public extension UIColor {
    enum GUIColorSystem {
        case system(System)
    }

    static func gui(_ style: GUIColorSystem) -> UIColor {
        switch style {
        case let .system(system):
            return system.color
        }
    }
}
