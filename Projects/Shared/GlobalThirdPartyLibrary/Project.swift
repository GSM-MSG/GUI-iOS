import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Shared.GlobalThirdPartyLibrary.rawValue,
    product: .framework,
    targets: [],
    externalDependencies: [
        .SPM.DIM,
        .SPM.Miniature
    ]
)
