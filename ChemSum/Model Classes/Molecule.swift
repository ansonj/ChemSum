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
	
	func addMember(atom: MoleculeMember) {
		members.append(atom)
	}
	
	func removeLastMember() {
		if members.count > 0 {
			members.removeLast()
		}
	}
	
	var totalWeight: Double {
		return members.reduce(0, combine: { $0 + $1.totalWeight } )
	}
	
	var description: String {
		return members.reduce("", combine: { $0 + $1.description } )
	}
}