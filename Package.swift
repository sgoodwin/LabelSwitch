// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LabelSwitch",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LabelSwitch",
            targets: ["LabelSwitch"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "9.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "3.0.0"),
        .package(url: "https://github.com/SwiftPackageRepository/ISO639.swift.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LabelSwitch",
            path: "./LabelSwitch/Classes"
        ),
        .testTarget(
            name: "LabelSwitchTests",
            dependencies: ["Nimble", "Quick", .product(name: "ISO639", package: "ISO639.swift")],
            path: "./Tests"
        ),
    ]
)
