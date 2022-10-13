// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudTips-SDK-iOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CloudTips-SDK-iOS",
            targets: [
                "Cloudpayments",
                "CloudpaymentsNetworking",
                
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),
        .package(url: "git@github.com:mxcl/PromiseKit.git", from: "6.18.1"),
    ],
    targets: [
        .target(
            name: "Cloudpayments",
            dependencies: [
                "CloudpaymentsNetworking",
                "ReCaptcha",
                "SDWebImage",
                "PromiseKit",
                "YandexPaySDK",
                "XPlatPaySDK",
            ],
            path: "sdk/Sources"),
        .target(name: "CloudpaymentsNetworking",
                path: "sdk/Pods/CloudpaymentsNetworking"),
        .target(name: "ReCaptcha",
                path: "sdk/Pods/ReCaptcha/ReCaptcha"),
        .binaryTarget(name: "YandexPaySDK",
                      path: "sdk/YandexPaySDK/Static/YandexPaySDK.xcframework"),
        .binaryTarget(name: "XPlatPaySDK",
                      path: "sdk/YandexPaySDK/Static/XPlatPaySDK.xcframework"),
    ],
    swiftLanguageVersions: [.v5]
)
