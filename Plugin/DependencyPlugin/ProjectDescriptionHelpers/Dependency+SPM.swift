import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
}

public extension Package {
}
