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
		theGroup.addAtom(Atom(symbol: "A", weight: 10.0, multiplicity: 2))
		theGroup.addAtom(Atom(symbol: "B", weight: 01.0, multiplicity: 3))
		theGroup.addAtom(Atom(symbol: "C", weight: 00.1, multiplicity: 4))
		
		XCTAssertEqual(23.4, theGroup.totalWeight)
	}
	
	func testTotalWeightWithMult() {
		theGroup.addAtom(Atom(symbol: "A", weight: 10.0, multiplicity: 2))
		theGroup.addAtom(Atom(symbol: "B", weight: 01.0, multiplicity: 3))
		theGroup.addAtom(Atom(symbol: "C", weight: 00.1, multiplicity: 4))

		theGroup.multiplicity = 3
		
		XCTAssertEqual(70.2, theGroup.totalWeight)
	}
	
	func testDescription() {
		theGroup.addAtom(Atom(symbol: "N", weight: 10, multiplicity: 1))
		theGroup.addAtom(Atom(symbol: "O", weight: 20, multiplicity: 1))

		XCTAssertEqual("(NO)", theGroup.description)
	}
	
	func testDescriptionWithMult() {
		theGroup.addAtom(Atom(symbol: "N", weight: 10, multiplicity: 1))
		theGroup.addAtom(Atom(symbol: "O", weight: 20, multiplicity: 1))

		theGroup.multiplicity = 4

		XCTAssertEqual("(NO)<sub>4</sub>", theGroup.description)
	}
	
	func testDescriptionWithInnerMults() {
		theGroup.addAtom(Atom(symbol: "H", weight: 10, multiplicity: 2))
		theGroup.addAtom(Atom(symbol: "S", weight: 20, multiplicity: 1))
		theGroup.addAtom(Atom(symbol: "O", weight: 30, multiplicity: 4))

		theGroup.multiplicity = 3
				// (H2SO4)3
		XCTAssertEqual("(H<sub>2</sub>SO<sub>4</sub>)<sub>3</sub>", theGroup.description)
	}
	
	func testRemovingAtom() {
		theGroup.addAtom(Atom(symbol: "A", weight: 1, multiplicity: 1))
		theGroup.addAtom(Atom(symbol: "B", weight: 2, multiplicity: 2))
		theGroup.removeLastAtom()
		
		XCTAssertEqual("(A)", theGroup.description)
	}
}