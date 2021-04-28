// swift-tools-version:5.3
import PackageDescription

let isLocalTestMode = false

var deps: [Package.Dependency] = [
    .package(url: "https://github.com/binarybirds/feather-core", .branch("main")), //from: "1.0.0-beta"),
]

var targets: [Target] = [
    .target(name: "SponsorModule", dependencies: [
        .product(name: "FeatherCore", package: "feather-core"),
    ],
    resources: [
        .copy("Bundle"),
    ]),
]

// @NOTE: https://bugs.swift.org/browse/SR-8658
if isLocalTestMode {
    deps.append(contentsOf: [
        .package(url: "https://github.com/vapor/fluent-sqlite-driver", from: "4.0.0"),
        .package(url: "https://github.com/binarybirds/liquid-local-driver", from: "1.2.0-beta"),
    ])
    targets.append(contentsOf: [
        .target(name: "Feather", dependencies: [
            .product(name: "FluentSQLiteDriver", package: "fluent-sqlite-driver"),
            .product(name: "LiquidLocalDriver", package: "liquid-local-driver"),
            .target(name: "SponsorModule"),
        ]),
        .testTarget(name: "SponsorModuleTests", dependencies: [
            .target(name: "SponsorModule"),
        ])
    ])
}

let package = Package(
    name: "sponsor-module",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SponsorModule", targets: ["SponsorModule"]),
    ],
    dependencies: deps,
    targets: targets
)
