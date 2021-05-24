// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegmentDisplay",
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
