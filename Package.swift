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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaAdMobTarget",
            dependencies: [
                .target(name: "AdiscopeMediaAdMob"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaAdMob.zip",
            checksum: "57e19dbefeb556497d4364f9b5798bfdd3b31b09c1be1b14a129bf753cff650f"
        ),
    ]
)
