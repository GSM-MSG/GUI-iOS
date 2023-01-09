import SwiftUI

public extension Color {
    enum GUIColorSystem {
        case system(System)
    }

    static func gui(_ style: GUIColorSystem) -> Color {
        switch style {
        case let .system(system):
            return system.color
        }
    }
}
