// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Charts",
    platforms: [
          .iOS(.v12),
          .tvOS(.v12),
          .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "Charts",
            targets: ["Charts"]),
        .library(
            name: "ChartsDynamic",
            type: .dynamic,
            targets: ["Charts"])
    ],
    dependencies: [
        .package(url: "https://github.com/GreenlightMe/greenlight-spm",
                 branch: "main")
    ],
    targets: [
        .target(
            name: "Charts",
            dependencies: [.product(name: "Numerics", package: "greenlight-spm")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
