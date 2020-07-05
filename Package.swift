// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreDataPublisher",
    platforms: [
        .iOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CoreDataPublisher",
            targets: ["CoreDataPublisher"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CoreDataPublisher",
            dependencies: []
        ),
        .testTarget(
            name: "CoreDataPublisherTests",
            dependencies: ["CoreDataPublisher"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
