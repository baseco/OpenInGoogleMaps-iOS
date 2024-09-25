// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OpenInGoogleMaps",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OpenInGoogleMaps",
            targets: ["OpenInGoogleMaps"]
        ),
    ],
    targets: [
        .target(
            name: "OpenInGoogleMaps",
            path: ".",
            sources: ["OpenInGoogleMapsController.m"],
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("CoreLocation")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
