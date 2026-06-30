// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("1.45.0")

let gitUrl = "https://maven.sumsub.com/repository/releases/IdensicMobileSDK-iOS/\(version)"

enum checksums {
    static let msdk = "39dbf8a11fd36d6544fff5d2dedc08e98ddef50bd14002d02e7392833acad238"
}

let package = Package(
    name: "IdensicMobileSDK",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(
            name: "IdensicMobileSDK",
            targets: [
                "IdensicMobileSDK"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "IdensicMobileSDK",
            url: "\(gitUrl)/IdensicMobileSDK_Core-\(version).zip",
            checksum: checksums.msdk
        )
    ]
)
