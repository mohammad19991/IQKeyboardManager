// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "IQKeyboardManagerSwift",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IQKeyboardManagerSwift",
            targets: ["IQKeyboardManagerSwift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/hackiftekhar/IQKeyboardNotification.git", from: "1.0.5"),
        .package(url: "https://github.com/mohammad19991/IQTextInputViewNotification.git", from: "1.0.9"),
        .package(url: "https://github.com/mohammad19991/IQKeyboardReturnManager.git", from: "1.0.7"),
        .package(url: "https://github.com/mohammad19991/IQTextView.git", from: "1.0.6"),
        .package(url: "https://github.com/mohammad19991/IQKeyboardToolbarManager.git", from: "1.1.7"),
    ],
    targets: [
        .target(name: "IQKeyboardManagerSwift",
                dependencies: [
                    "IQKeyboardNotification",
                    "IQTextInputViewNotification",
                    "IQKeyboardToolbarManager",
                    "IQKeyboardReturnManager",
                    "IQTextView"
                ],
                path: "IQKeyboardManagerSwift",
                resources: [
                    .copy("PrivacyInfo.xcprivacy")
                ],
                linkerSettings: [
                    .linkedFramework("UIKit")
                ]
               )
    ]
)
