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
		
		theMolecule.addMember(carbon)
		
		XCTAssertEqual("C", theMolecule.description)
	}
	
	func testAddingMultipleAtoms() {
		let hydrogen = Atom(symbol: "H", weight: 1.00794, multiplicity: 2)
		let oxygen = Atom(symbol: "O", weight: 15.999, multiplicity: 1)
		
		theMolecule.addMember(hydrogen)
		theMolecule.addMember(oxygen)
		
		XCTAssertEqual("H<sub>2</sub>O", theMolecule.description)
	}
	
	func testRemovingAtom() {
		let carbon = Atom(symbol: "C", weight: 12.011, multiplicity: 3)
		let extraCarbon = Atom(symbol: "C", weight: 12.011, multiplicity: 1)
		
		theMolecule.addMember(carbon)
		theMolecule.addMember(extraCarbon)
		theMolecule.removeLastMember()
		
		XCTAssertEqual("C<sub>3</sub>", theMolecule.description)
	}
	
	func testRemovingFromEmptyMolecule() {
		theMolecule.removeLastMember()
		
		XCTAssertEqual("", theMolecule.description)
	}
	
	func testTotalWeight() {
		let hydrogen = Atom(symbol: "H", weight: 1.00794, multiplicity: 2)
		let oxygen = Atom(symbol: "O", weight: 15.999, multiplicity: 1)
		
		theMolecule.addMember(hydrogen)
		theMolecule.addMember(oxygen)
		
		XCTAssertEqualWithAccuracy(18.01488, theMolecule.totalWeight, DOUBLE_ERROR)
	}
	
	func createMoleculeWithGroup() {
		let sodium = Atom(symbol: "Na", weight: 22.99, multiplicity: 1)
		let oxygen = Atom(symbol: "O", weight: 15.999, multiplicity: 1)
		let hydrogen = Atom(symbol: "H", weight: 1.00794, multiplicity: 1)
		
		let group = Group(atoms: [oxygen, hydrogen], multiplicity: 2)
		
		theMolecule.addMember(sodium)
		theMolecule.addMember(group)
	}
	
	func testAddingGroup() {
		createMoleculeWithGroup()
		
		XCTAssertEqual("Na(OH)<sub>2</sub>", theMolecule.description)
	}
	
	func testRemovingLastGroup() {
		createMoleculeWithGroup()
		
		theMolecule.removeLastMember()
		
		XCTAssertEqual("Na", theMolecule.description)
	}
	
	func testTotalWeightWithGroup() {
		createMoleculeWithGroup()
		
		XCTAssertEqualWithAccuracy(57.00388, theMolecule.totalWeight, DOUBLE_ERROR)
	}
}
