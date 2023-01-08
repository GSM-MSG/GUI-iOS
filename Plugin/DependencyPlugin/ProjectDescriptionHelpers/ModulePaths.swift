import Foundation

// swiftlint: disable all
public enum ModulePaths {
    case features(Features)
    case services(Services)
    case core(Core)
    case shared(Shared)
}

public extension ModulePaths {
    enum Features: String {
        case BaseFeature

        func targetName(type: MicroTargetType) -> String {
            "\(self.rawValue)\(type.rawValue)"
        }
    }
}

public extension ModulePaths {
    enum Services: String {
        case BaseService

        func targetName(type: MicroTargetType) -> String {
            "\(self.rawValue)\(type.rawValue)"
        }
    }
}

public extension ModulePaths {
    enum Core: String {
        case DesignSystem

        func targetName(type: MicroTargetType) -> String {
            "\(self.rawValue)\(type.rawValue)"
        }
    }
}

public extension ModulePaths {
    enum Shared: String {
        case CombineExtension
        case UtilityModule
        case GlobalThirdPartyLibrary

        func targetName(type: MicroTargetType) -> String {
            "\(self.rawValue)\(type.rawValue)"
        }
    }
}

public enum MicroTargetType: String {
    case interface = "Interface"
    case sources = ""
    case testing = "Testing"
}
