// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resolver",
    products: [
        .library(
            name: "Resolver",
            targets: ["Resolver"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", from: "7.6.1"),
        .package(url: "https://github.com/Quick/Nimble", from: "13.3.0"),
    ],
    targets: [
        .target(
            name: "Resolver"
        ),
        .testTarget(
            name: "ResolverTests",
            dependencies: ["Resolver", "Quick", "Nimble"]
        ),
    ]
)
