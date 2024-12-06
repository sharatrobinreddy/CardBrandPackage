// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardBrandPackage",
    platforms: [
            .iOS(.v12), // Specify the minimum iOS version
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CardBrandPackage",
            targets: ["CardBrandPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CardBrandPackage",
            dependencies: [
                .target(name: "TestPrivateFramework")
            ]),
        
        .testTarget(
            name: "CardBrandPackageTests",
            dependencies: ["CardBrandPackage"]
        ),
        .binaryTarget(
            name: "TestPrivateFramework",
            path: "./Sources/TestPrivateFramework.xcframework")
    ]
)
