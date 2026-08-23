// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-AppLovin-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "AppLovinAdapter", targets: ["AppLovinAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.6.4"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/applovin-adapter/5.9.0/ISAppLovinAdapter5.9.0.zip",
      checksum: "15b7a42a10f7434253eb0da0e0587a68fcc5989e37cddac62de69e4a1dfd55bc"
    )
  ]
)
