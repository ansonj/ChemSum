//
//  MoleculeMember.swift
//  ChemSum
//
//  Created by Anson Jablinski on 12/11/2014.
//  Copyright (c) 2014 _ansonj. All rights reserved.
//

import Foundation

protocol MoleculeMember: Printable {
    var multiplicity: Int { get set }
    var totalWeight: Double { get }
}