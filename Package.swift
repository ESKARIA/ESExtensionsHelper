// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ESExtensionsHelper",
    platforms: [.iOS(.v13),.tvOS(.v13),.watchOS(.v6)],
    products: [
        .library(name: "ESExtensionsHelper", targets: ["ESExtensionsHelper"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "ESExtensionsHelper", dependencies: []),
        .testTarget(name: "ESExtensionsHelperTests", dependencies: ["ESExtensionsHelper"]),
    ]
)
