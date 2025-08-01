// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NVActivityIndicatorView",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(name: "NVActivityIndicatorView", targets: ["NVActivityIndicatorView"]),
        .library(name: "NVActivityIndicatorViewExtended", targets: ["NVActivityIndicatorViewExtended"])
    ],
    targets: [
        .target(
            name: "NVActivityIndicatorView",
            path: "Sources/Base",
            settings: .settings(
                base: [
                    "BUILD_LIBRARY_FOR_DISTRIBUTION": "YES",
                    "DEFINES_MODULE": "YES",
                    "SKIP_INSTALL": "NO"
                ]
            )
        ),
        .target(
            name: "NVActivityIndicatorViewExtended",
            dependencies: ["NVActivityIndicatorView"],
            path: "Sources/Extended",
            settings: .settings(
                base: [
                    "BUILD_LIBRARY_FOR_DISTRIBUTION": "YES",
                    "DEFINES_MODULE": "YES",
                    "SKIP_INSTALL": "NO"
                ]
            )
        )
    ]
)
