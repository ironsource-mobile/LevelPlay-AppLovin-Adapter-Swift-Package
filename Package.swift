// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-AppLovin-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "AppLovinAdapter", targets: ["AppLovinAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.5.1"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "AppLovinAdapter",
      dependencies: [
        "AppLovinAdapterSDK",
        .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "AppLovinAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/applovin-adapter/5.5.0/ISAppLovinAdapter5.5.0.zip",
      checksum: "b7568235a1a197b85b70d648397a4856f3ae7fb0c437ae0e47b240c06d851e6f"
    )
  ]
)
