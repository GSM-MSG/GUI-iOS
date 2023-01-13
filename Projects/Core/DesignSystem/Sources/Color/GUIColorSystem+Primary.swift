import UIKit

public extension UIColor.GUIColorSystem {
    enum Primary: GUIColorable {
        case m20
        case m40
        case m60
        case s20
        case s40
        case s60
    }
}

public extension UIColor.GUIColorSystem.Primary {
    var color: UIColor {
        switch self {
        case .m20:
            return DesignSystemAsset.m20.color
        case .m40:
            return DesignSystemAsset.m40.color
        case .m60:
            return DesignSystemAsset.m60.color
        case .s20:
            return DesignSystemAsset.s20.color
        case .s40:
            return DesignSystemAsset.s40.color
        case .s60:
            return DesignSystemAsset.s60.color
        }
    }
}
