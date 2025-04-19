// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "SileroVAD",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SileroVAD",
            targets: ["SileroVAD"]
        )
    ],
    dependencies: [
      .package(
        name: "onnxruntime",
        url: "https://github.com/microsoft/onnxruntime-swift-package-manager",
        branch: "main"
      )
    ],
    targets: [
        .target(
            name: "SileroVAD",
            dependencies: ["onnxruntime"],
            resources: [.process("Resources")]
        )
    ],
    swiftLanguageVersions: [.v5]
)