import UIKit

public extension UIColor {
    enum GUIColorSystem {
        case system(System)
<<<<<<< HEAD
        case gray(Gray)
=======
        case primary(Primary)
>>>>>>> 11179b1b4227e9bc3ca25e60dc9082c50db19f88
    }

    static func gui(_ style: GUIColorSystem) -> UIColor {
        switch style {
        case let .system(system):
            return system.color
<<<<<<< HEAD

        case let .gray(gray):
            return gray.color
=======
            
        case let .primary(primary):
            return primary.color
>>>>>>> 11179b1b4227e9bc3ca25e60dc9082c50db19f88
        }
    }
}
