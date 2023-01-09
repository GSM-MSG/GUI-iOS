import SwiftUI

public extension Color.GUIColorSystem {
    enum System: GUIColorable {
        case negative
        case positive
        case black
        case white
    }
}

public extension Color.GUIColorSystem.System {
    var color: Color {
        switch self {
        case .negative:
            return DesignSystemAsset.negative.swiftUIColor

        case .positive:
            return DesignSystemAsset.positive.swiftUIColor

        case .black:
            return DesignSystemAsset.black.swiftUIColor

        case .white:
            return DesignSystemAsset.white.swiftUIColor
        }
    }
}
