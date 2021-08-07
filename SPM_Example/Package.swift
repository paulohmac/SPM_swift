// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM_Example",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPM_Example",
            targets: ["SPM_Example"]),
    ],
    dependencies: [
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
        .package(name: "Moya", url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPM_Example",
            dependencies: ["Alamofire", "Moya"]),
        .testTarget(
            name: "SPM_ExampleTests",
            dependencies: ["Alamofire", "Moya","SPM_Example"]),
    ]
)
