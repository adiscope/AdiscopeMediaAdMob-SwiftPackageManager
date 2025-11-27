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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.11.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.5.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.9"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "7.4.1-release.1"),
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
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaAdMob.zip",
            checksum: "afd0583bfa7c6c02362ac78cea9e8c5ab5e5efdf84fa8e396aae5e938e8eb65b"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "22e5bbffbb74ba3db90d281ce137c42d7487a53442903c2751ab755936132d03"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/MintegralAdapter.xcframework.zip",
            checksum: "4b71bb4b580900b9123c0ca354472374004d5343f7caf071336d5c3d655543d8"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/PangleAdapter.xcframework.zip",
            checksum: "f643f912f13524a1dd898263e7b1ee3d3362a6395ca39ef056855497cc7b8ad8"
        ),
    ]
)
