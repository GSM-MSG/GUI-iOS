import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Features.BaseFeature.rawValue,
    product: .staticFramework,
    targets: [.unitTest],
    internalDependencies: [
        .Core.DesignSystem,
        .Shared.GlobalThirdPartyLibrary,
        .Shared.UtilityModule
    ]
)
