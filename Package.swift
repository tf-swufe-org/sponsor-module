// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "sponsor-module",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SponsorModule", targets: ["SponsorModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/binarybirds/feather-core", from: "1.0.0-beta"),
    ],
    targets: [
        .target(name: "SponsorModule", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
        ], resources: [
            .copy("Bundle"),
        ]),
        .testTarget(name: "SponsorModuleTests",dependencies: [
            .target(name: "SponsorModule"),
        ])
    ]
)
