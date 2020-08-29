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
        .package(url: "https://github.com/binarybirds/feather-core", .branch("main")),
    ],
    targets: [
        .target(name: "SponsorModule",
                dependencies: [
                    .product(name: "FeatherCore", package: "feather-core"),
                ],
                resources: [
                    .copy("Views"),
                ]
        ),
        .testTarget(name: "SponsorModuleTests",
                    dependencies: [
                        .target(name: "SponsorModule"),
                    ])
    ]
)
