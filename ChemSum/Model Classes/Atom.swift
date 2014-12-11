//
//  Atom.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import Foundation

class Atom: MoleculeMember {
    init() {
        multiplicity = 1
    }
    
    var niceDescription: String {
        var result = symbol
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
        return Double(multiplicity) * weight
    }
    
    var symbol: String = ""
    
    var weight: Double = 0
}