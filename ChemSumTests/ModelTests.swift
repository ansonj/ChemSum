//
//  ChemSumTests.swift
//  ChemSumTests
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import UIKit
import XCTest

class CanaryCase: XCTestCase {
    func testCanary() {
        XCTAssert(true)
    }
}

class AtomSharedTests: XCTestCase {
    var member: MoleculeMember?
    
    func getMember() -> MoleculeMember {
        return Atom()
    }
    
    override func setUp() {
        super.setUp()
        member = getMember()
    }
    
    func testSetMultiplicityZero() {
        member!.multiplicity = 0
        XCTAssertEqual(1, member!.multiplicity)
    }
    
    func testSetMultiplicityNegative() {
        member!.multiplicity = -999
        XCTAssertEqual(1, member!.multiplicity)
    }
    
    func testSetMultiplicityOkay() {
        let mult = 42
        member!.multiplicity = mult
        XCTAssertEqual(mult, member!.multiplicity)
    }
}

class GroupSharedTests: AtomSharedTests {
    override func getMember() -> MoleculeMember {
        return Group()
    }
}

class AtomTests: XCTestCase {
    var theAtom: Atom = Atom()
    
    override func setUp() {
        super.setUp()
        
        theAtom = Atom()
    }
    
    func testTotalWeight() {
        theAtom.weight = 12.1
        theAtom.multiplicity = 3
        
        XCTAssertEqual(36.3, theAtom.totalWeight)
    }
    
    func testNiceDescriptionWithoutMult() {
        let symbol = "Na"
        theAtom.symbol = symbol
        
        XCTAssertEqual(symbol, theAtom.niceDescription)
    }
    
    func testNiceDescriptionWithMult() {
        theAtom.symbol = "C"
        theAtom.multiplicity = 3
        
        XCTAssertEqual("C<sub>3</sub>", theAtom.niceDescription)
    }
}

class GroupTests {
    
}