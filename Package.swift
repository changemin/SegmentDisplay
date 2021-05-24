// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegmentDisplay",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SegmentDisplay",
            targets: ["SegmentDisplay"]),
    ],
    targets: [
        .target(
            name: "SegmentDisplay",
            dependencies: []),
    ]
)
