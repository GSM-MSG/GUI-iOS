import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
    static let MSGLayout = TargetDependency.external(name: "MSGLayout")
    static let Moordinator = TargetDependency.external(name: "Moordinator")
    static let IQKeyboardManager = TargetDependency.external(name: "IQKeyboardManager")
    static let Then = TargetDependency.external(name: "Then")
}

public extension Package {
}
