import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
    static let DIM = TargetDependency.external(name: "DIM")
}

public extension Package {
}
