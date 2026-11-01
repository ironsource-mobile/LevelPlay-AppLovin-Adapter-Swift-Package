// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-AppLovin-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "AppLovinAdapter", targets: ["AppLovinAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.7.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "AppLovinAdapter",
      dependencies: [
        "AppLovinAdapterSDK",
        .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "AppLovinAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/applovin-adapter/5.10.0/ISAppLovinAdapter5.10.0.zip",
      checksum: "e97efee323b57abe1f3b2639a747ca8753dd87ab3ca397358678d2e8d1c0e838"
    )
  ]
)
