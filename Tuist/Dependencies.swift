import ProjectDescription
import ConfigurationPlugin

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/GSM-MSG/Moya.git", requirement: .branch("master")),
            .remote(url: "https://github.com/GSM-MSG/MSGLayout", requirement: .exact("1.0.2")),
            .remote(url: "https://github.com/GSM-MSG/Moordinator", requirement: .exact("1.0.0")),
            .remote(url: "https://github.com/hackiftekhar/IQKeyboardManager", requirement: .exact("6.3.0")),
            .remote(url: "https://github.com/devxoul/Then", requirement: .exact("3.0.0"))
        ],
        baseSettings: .settings(
            configurations: [
                .debug(name: .dev),
                .debug(name: .stage),
                .release(name: .prod)
            ]
        )
    ),
    platforms: [.iOS]
)
