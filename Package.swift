// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Charts",
    platforms: [
          .iOS(.v12)
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
        .package(url: "git@github.com:GreenlightMe/Numerics.git",
                 from: "0.0.2")
    ],
    targets: [
        .target(
            name: "Charts",
            dependencies: ["Numerics"]
        )
    ]
)
