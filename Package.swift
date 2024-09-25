// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OpenInGoogleMaps",
    defaultLocalization: "en",
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
            exclude: [
                "Docs",
                "OpenInGoogleMapsSample"
            ],
            sources: ["OpenInGoogleMapsController.m"],
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("CoreLocation")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
