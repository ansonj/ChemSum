//
//  Group.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import Foundation

class Group: MoleculeMember {
    var description: String {
        return "Bob"
    }
    
    var multiplicity: Int = 1
    
    var totalWeight: Double {
        return 4.5
    }
    
    var contents: [Atom] = []
}