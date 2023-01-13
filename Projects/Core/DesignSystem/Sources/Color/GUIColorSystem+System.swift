import UIKit

public extension UIColor.GUIColorSystem {
    enum System: GUIColorable {
        case negative
        case positive
        case black
        case white
        case g20
        case g40
        case g80
        case g120
    }
}

public extension UIColor.GUIColorSystem.System {
    var color: UIColor {
        switch self {
        case .negative:
            return DesignSystemAsset.negative.color

        case .positive:
            return DesignSystemAsset.positive.color

        case .black:
            return DesignSystemAsset.black.color

        case .white:
            return DesignSystemAsset.white.color
            
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
