//
//  Group.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import Foundation

class Group: MoleculeMember {
	private var contents: [Atom] = []
	
    var description: String {
		var result = contents.reduce("(", combine: { $0 + $1.description })
		
		result += ")"
		
		if multiplicity > 1 {
			result += "<sub>\(multiplicity)</sub>"
		}
		
		return result
    }
    
	var multiplicity: Int = 1 {
		didSet {
			if multiplicity < 1 {
				multiplicity = 1
			}
		}
	}
		
    var totalWeight: Double {
		let weight = contents.reduce(0, combine: { $0 + $1.totalWeight })
		return weight * Double(multiplicity)
    }
	
	func addAtom(atom: Atom) {
		contents.append(atom)
	}
	
	func removeLastAtom() {
		contents.removeLast()
	}
}