//
//  Food.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct Food : Codable,Identifiable {
    
    
    
    var id: String
    var name: String
    
    var carb: Int
    var protein: Int
    var fat: Int
    var kcal: Int
}
