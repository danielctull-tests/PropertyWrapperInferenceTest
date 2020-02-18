// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PropertyWrapperInferenceTest",
    products: [
        .library(
            name: "PropertyWrapperInferenceTest",
            targets: ["PropertyWrapperInferenceTest"]),
    ],
    targets: [
        .target(name: "PropertyWrapperInferenceTest"),
    ]
)
