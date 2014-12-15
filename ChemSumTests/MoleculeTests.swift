//
//  MoleculeTests.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/14/14.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import XCTest

class MoleculeTests: XCTestCase {
	var theMolecule = Molecule()
	
	override func setUp() {
		super.setUp()
		
		theMolecule = Molecule()
	}
	
	func testAddingAtom() {
		let carbon = Atom(symbol: "C", weight: 12.011, multiplicity: 1)
		
		theMolecule.addAtom(carbon)
		
		XCTAssertEqual("C", theMolecule.description)
	}
	
	func testAddingMultipleAtoms() {
		XCTFail("test not implemented")
	}
	
	func testRemovingAtom() {
		XCTFail("test not implemented")
	}
	
	func testTotalWeight() {
		XCTFail("test not implemented")
	}
	
	func testAddingGroup() {
		XCTFail("test not implemented")
	}
	
	func testRemovingLastGroup() {
		XCTFail("test not implemented")
	}
	
	func testTotalWeightWithGroup() {
		XCTFail("test not implemented")
	}
}
