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
        .package(url: "https://github.com/binarybirds/feather-core", from: "1.0.0"),
        .package(name: "system-module", url: "https://github.com/feather-modules/system", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SponsorModule",
                dependencies: [
                    .product(name: "FeatherCore", package: "feather-core"),
                    .product(name: "SystemModule", package: "system-module"),
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
