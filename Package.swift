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
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"9.3.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/applovin-adapter/5.3.0/ISAppLovinAdapter5.3.0.zip",
      checksum: "89a9441c248d6b4818bc1adcc6542c5d061f0cc7ffae19f116b061e4b81e11a7"
    )
  ]
)
