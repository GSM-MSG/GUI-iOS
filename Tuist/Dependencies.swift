import ProjectDescription
import ConfigurationPlugin

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/GSM-MSG/Moya.git", requirement: .branch("master")),
            .remote(url: "https://github.com/GSM-MSG/MSGLayout", requirement: .exact("1.0.2")),
            .remote(url: "https://github.com/GSM-MSG/Moordinator", requirement: .exact("1.1.1")),
            .remote(url: "https://github.com/hackiftekhar/IQKeyboardManager", requirement: .exact("6.5.0")),
            .remote(url: "https://github.com/devxoul/Then", requirement: .exact("3.0.0")),
            .remote(url: "https://github.com/GSM-MSG/DIM.git", requirement: .exact("1.0.1")),
            .remote(url: "https://github.com/GSM-MSG/Miniature.git", requirement: .exact("1.1.0")),
            .remote(url: "https://github.com/CombineCommunity/CombineCocoa.git", requirement: .exact("0.4.1"))
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
