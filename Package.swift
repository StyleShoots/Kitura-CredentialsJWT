// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kitura-CredentialsJWT",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CredentialsJWT",
            targets: ["CredentialsJWT"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/StyleShoots/Kitura-Credentials.git", branch: "2.5.2_tag"),
        .package(url: "https://github.com/Kitura/Swift-JWT.git", from: "4.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CredentialsJWT",
            dependencies: [
                .product(name: "Credentials", package: "Kitura-Credentials"),
                .product(name: "SwiftJWT", package: "Swift-JWT")
            ]
        ),
        .testTarget(
            name: "CredentialsJWTTests",
            dependencies: ["CredentialsJWT"]
        )
    ]
)
