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
            path: "OpenInGoogleMaps",
            exclude: [
                "Docs",
                "OpenInGoogleMapsSample"
            ],
            sources: ["OpenInGoogleMapsController.m"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include/OpenInGoogleMaps")
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
