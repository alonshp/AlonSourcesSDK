// swift-tools-version:5.5
import PackageDescription

func createProducts() -> [Product] {
    let products: [Product] = [
			.library(name: "AlonSourcesSDK", targets: ["AlonSourcesSDK"])
		]

    return products
}

func createTargets() -> [Target] {
    var targets = [Target]()

		let SourcesTarget: Target = .target(
        name: "AlonSourcesSDK",
        path: "AlonSourcesSDK"
    )
    targets.append(SourcesTarget)

		return targets
}

let products = createProducts()
let targets = createTargets()

let package = Package(
    name: "AlonSourcesSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: products,
    targets: targets
)
