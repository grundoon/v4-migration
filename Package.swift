// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "V4Migration",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "V4Migration",
            targets: ["V4Migration"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "V4Migration",
            dependencies: ["Vapor"]),
        .testTarget(
            name: "V4MigrationTests",
            dependencies: ["V4Migration"]),
    ]
)