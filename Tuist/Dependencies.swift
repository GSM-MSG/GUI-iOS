import ProjectDescription
import ConfigurationPlugin

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/GSM-MSG/Moya.git", requirement: .branch("master")),
            .remote(url: "https://github.com/GSM-MSG/MSGLayout", requirement: .upToNextMajor(from: "1.0.2")),
            .remote(url: "https://github.com/GSM-MSG/Moordinator", requirement: .upToNextMajor(from: "1.0.0")),
            .remote(url: "https://github.com/hackiftekhar/IQKeyboardManager", requirement: .upToNextMajor(from: "6.3.0")),
            .remote(url: "https://github.com/devxoul/Then", requirement: .upToNextMajor(from: "2.0.0"))
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
