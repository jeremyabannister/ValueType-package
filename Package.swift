// swift-tools-version: 5.10

///
import PackageDescription


///
let package = Package(
    name: "ValueType-package",
    products: [
        
        ///
        .library(
            name: "ValueType-module",
            targets: ["ValueType-module"]
        ),
        
        ///
        .library(
            name: "ValueTypeTestToolkit",
            targets: ["ValueTypeTestToolkit"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ExpressionErgonomics",
            "0.4.3" ..< "0.5.0"
        ),
    ],
    targets: [
        
        ///
        .target(
            name: "ValueType-module",
            dependencies: [
                "ExpressionErgonomics",
            ]
        ),
        
        ///
        .target(
            name: "ValueTypeTestToolkit",
            dependencies: [
                
                ///
                .product(
                    name: "ExpressionErgonomicsTestToolkit",
                    package: "ExpressionErgonomics"
                ),
                
                ///
                "ValueType-module",
            ]
        ),
        
        ///
        .testTarget(
            name: "ValueType-module-tests",
            dependencies: [
                "ValueType-module",
                "ValueTypeTestToolkit",
            ]
        ),
        
        ///
        .testTarget(
            name: "ValueTypeTestToolkit-tests",
            dependencies: [
                "ValueTypeTestToolkit",
            ]
        ),
    ]
)
