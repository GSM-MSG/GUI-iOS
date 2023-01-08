import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Shared.GlobalThirdPartyLibrary.rawValue,
    product: .framework,
    targets: [.unitTest],
    externalDependencies: [
        .SPM.DIM,
        .SPM.Miniature
    ]
)
