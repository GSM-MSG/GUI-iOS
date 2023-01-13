import UIKit

public extension UIColor.GUIColorSystem {
    enum Gray: GUIColorable {
        case g20
        case g40
        case g80
        case g120
    }
}

public extension UIColor.GUIColorSystem.Gray {
    var color: UIColor {
        switch self {
        case .g20:
            return DesignSystemAsset.g20.color
            
        case .g40:
            return DesignSystemAsset.g40.color
            
        case .g80:
            return DesignSystemAsset.g80.color
            
        case .g120:
            return DesignSystemAsset.g120.color
            
        }
    }
}
