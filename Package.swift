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
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.1"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaAdMob.zip",
            checksum: "3e3c1c58c10b5ff40318e2cdc04d6fd3a9cf16fcf8712808e4000288d11a8248"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "c1ffac2aa0b2cae8ba95a728a5021a595560bd778feb5f677e7b428006df7f95"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/MintegralAdapter.xcframework.zip",
            checksum: "fcaf1162b25f13d7702e32c275a982cf351fe08f03ae1d2cdd439785450c76c2"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/PangleAdapter.xcframework.zip",
            checksum: "1be26ec128709635a34fde68a09f582ae2c4cc01dab5b16a23bc429c158687f9"
        ),
    ]
)
