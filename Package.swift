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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/applovin-adapter/5.8.0/ISAppLovinAdapter5.8.0.zip",
      checksum: "242d653e051840f70ee0d65909972198eb323b9ed23bc0a47c39b1b5a09d3d00"
    )
  ]
)
