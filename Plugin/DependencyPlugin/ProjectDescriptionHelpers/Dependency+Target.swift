import ProjectDescription

// swiftlint: disable all
public extension TargetDependency {
    struct Features {}
    struct Services {}
    struct Core {}
    struct Shared {}
}

public extension TargetDependency.Features {
    static let BaseFeature = TargetDependency.project(
        target: ModulePaths.Features.BaseFeature.targetName(type: .sources),
        path: .relativeToFeature(ModulePaths.Features.BaseFeature.targetName(type: .sources))
    )
}

public extension TargetDependency.Services {
    static let BaseService = TargetDependency.project(
        target: ModulePaths.Services.BaseService.targetName(type: .sources),
        path: .relativeToService(ModulePaths.Services.BaseService.targetName(type: .sources))
    )
}

public extension TargetDependency.Core {
    static let DesignSystem = TargetDependency.project(
        target: ModulePaths.Core.DesignSystem.targetName(type: .sources),
        path: .relativeToCore(ModulePaths.Core.DesignSystem.targetName(type: .sources))
    )
}

public extension TargetDependency.Shared {
    static let CombineExtension = TargetDependency.project(
        target: ModulePaths.Shared.CombineExtension.targetName(type: .sources),
        path: .relativeToShared(ModulePaths.Shared.CombineExtension.targetName(type: .sources))
    )
    static let UtilityModule = TargetDependency.project(
        target: ModulePaths.Shared.UtilityModule.targetName(type: .sources),
        path: .relativeToShared(ModulePaths.Shared.UtilityModule.targetName(type: .sources))
    )
    static let GlobalThirdPartyLibrary = TargetDependency.project(
        target: ModulePaths.Shared.GlobalThirdPartyLibrary.targetName(type: .sources),
        path: .relativeToShared(ModulePaths.Shared.GlobalThirdPartyLibrary.targetName(type: .sources))
    )
}
