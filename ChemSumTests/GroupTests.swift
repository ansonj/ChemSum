//
//  GroupTests.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import XCTest

class GroupTests: XCTestCase {
    var theGroup = Group()
    
    override func setUp() {
        super.setUp()
        theGroup = Group()
    }
    
    func testSetMultiplicityZero() {
        theGroup.multiplicity = 0
        XCTAssertEqual(1, theGroup.multiplicity)
    }
    
    func testSetMultiplicityNegative() {
        theGroup.multiplicity = -999
        XCTAssertEqual(1, theGroup.multiplicity)
    }
    
    func testSetMultiplicityOkay() {
        let mult = 42
        theGroup.multiplicity = mult
        XCTAssertEqual(mult, theGroup.multiplicity)
    }

	func testTotalWeight() {
		XCTFail("test not implemented")
	}
	
	func testNiceDescription() {
		XCTFail("test not implemented")
	}
}