import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: ModulePaths.Shared.CombineExtension.rawValue,
    product: .framework,
    targets: [],
    externalDependencies: [
        .SPM.CombineCocoa
    ]
)
