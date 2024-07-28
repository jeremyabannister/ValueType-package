//
//  conformance_proofs_tests.swift
//
//
//  Created by Jeremy Bannister on 6/13/24.
//

///
extension ValueType_tests {
    
    ///
    func proofOfExistenceOf_proofOfConformanceTo_ValueType() {
        func imagine<T: ValueType>(t: T) {
            t.proofOfConformanceTo_ValueType()
            T.proofOfConformanceTo_ValueType()
        }
    }
}
