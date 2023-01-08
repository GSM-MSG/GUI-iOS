import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
    static let MSGLayout = TargetDependency.external(name: "MSGLayout")
    static let Moordinator = TargetDependency.external(name: "Moordinator")
    static let IQKeyboardManager = TargetDependency.external(name: "IQKeyboardManagerSwift")
    static let Then = TargetDependency.external(name: "Then")
    static let DIM = TargetDependency.external(name: "DIM")
    static let Miniature = TargetDependency.external(name: "Miniature")
}

public extension Package {
}
