//
//  Molecule.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/14/14.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import Foundation

class Molecule: Printable {
	private var members: [MoleculeMember] = []
	
	func addAtom(atom: Atom) {
		members.append(atom)
	}
	
	func removeLastAtom() {
		
	}
	
	var totalWeight: Double {
		return 0
	}
	
	var description: String {
		return members[0].description
	}
}