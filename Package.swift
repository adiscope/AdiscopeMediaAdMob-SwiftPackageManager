// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaAdMob",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaAdMob",
            targets: ["AdiscopeMediaAdMobTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.4.4"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.7"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaAdMobTarget",
            dependencies: [
                .target(name: "AdiscopeMediaAdMob"),
                .target(name: "LiftoffMonetizeAdapter"),
                .target(name: "MintegralAdapter"),
                .target(name: "PangleAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaAdMob.zip",
            checksum: "ad113b4a0be7aad9b2978c484dd50edcc294a0915d875ef8989a132e1666cdfd"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "530353e53f05c11c570b2588c74156c6bd477e4e2b103dad3d0b4c07d78f2e47"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MintegralAdapter.xcframework.zip",
            checksum: "bd799aa8af772cc2bccc475ca52204248a76e4d25b97746734a6a51a716c06a4"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/PangleAdapter.xcframework.zip",
            checksum: "0ffa8c7edfa440f622be0008cf2b667aa8e9c4c00b58f66cb799112b37c3d857"
        ),
    ]
)
