import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Services.BaseService.rawValue,
    product: .staticFramework,
    targets: [.unitTest],
    internalDependencies: [
        .Shared.GlobalThirdPartyLibrary,
        .Shared.UtilityModule
    ]
)
