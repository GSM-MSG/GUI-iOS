import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Features.BaseFeature.rawValue,
    product: .staticFramework,
    targets: [.unitTest],
    externalDependencies: [
        .SPM.MSGLayout,
        .SPM.Moordinator,
        .SPM.IQKeyboardManager,
        .SPM.Then
    ],
    internalDependencies: [
        .Core.DesignSystem,
        .Shared.GlobalThirdPartyLibrary,
        .Shared.UtilityModule
    ]
)
