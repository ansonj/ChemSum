//
//  ChemSumTests.swift
//  ChemSumTests
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import XCTest

class AtomTests: XCTestCase {
    var theAtom = Atom()
    
    override func setUp() {
        super.setUp()
        
        theAtom = Atom()
    }
    
    func testSetMultiplicityZero() {
        theAtom.multiplicity = 0
        XCTAssertEqual(1, theAtom.multiplicity)
    }
    
    func testSetMultiplicityNegative() {
        theAtom.multiplicity = -999
        XCTAssertEqual(1, theAtom.multiplicity)
    }
    
    func testSetMultiplicityOkay() {
        let mult = 42
        theAtom.multiplicity = mult
        XCTAssertEqual(mult, theAtom.multiplicity)
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