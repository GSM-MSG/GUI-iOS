import SwiftUI

public extension UIColor.GUIColorSystem {
    enum System: GUIColorable {
        case negative
        case positive
        case black
        case white
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
        }
    }
}
