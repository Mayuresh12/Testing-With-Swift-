//
//  Haters.swift
//  TaylorSwiftSOngTests
//
//  Created by Mayuresh Rao on 8/22/20.
//  Copyright © 2020 Mayuresh Rao. All rights reserved.
//

import Foundation
struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}
