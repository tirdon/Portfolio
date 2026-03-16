// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mainSite",
    products: [
        .executable(name: "Server", targets: ["Server"]),
        .executable(name: "Client", targets: ["Client"])
    ],
    dependencies: [
    .package(url: "https://github.com/hummingbird-project/hummingbird.git", from: "2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "Shared"),
        .executableTarget(
            name: "Client"
        ),
        .executableTarget(
            name: "Server",
            dependencies: [
                .product(name: "Hummingbird", package: "hummingbird"),
            ]
        ),
    ]
)
