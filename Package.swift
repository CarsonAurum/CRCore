// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CRCore",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "CRCore",
            targets: ["CRCore"]),
    ],
    targets: [
        .target(
            name: "CRCore", path: "Sources/"),
        .testTarget(
            name: "CRCoreTests",
            dependencies: ["CRCore"]),
    ]
)
