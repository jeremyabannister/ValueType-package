//
//  ValueType_tests.swift
//
//
//  Created by Jeremy Bannister on 6/13/24.
//

///
extension ValueType_tests {
    
    ///
    func test_inheritsFromHashable() {
        ifGiven((any ValueType).self) {
            let _: any Hashable = $0
        }
    }
    
    ///
    func test_inheritsFromExpressionErgonomic() {
        ifGiven((any ValueType).self) {
            let _: any ExpressionErgonomic = $0
        }
    }
    
    ///
    func test_canBeConformedTo() {
        struct Foo: ValueType {
            var a: Bool
        }
    }
}
