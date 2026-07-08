// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Stringfication",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Stringfication", targets: ["Stringfication"])
    ],
    targets: [
        .target(
            name: "Stringfication",
            path: "Stringfication",
            exclude: [
                "Stringfication.h",
                "Info.plist"
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "StringficationTests",
            dependencies: ["Stringfication"],
            path: "Tests/StringficationTests",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
