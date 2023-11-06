//
//  FodStore.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI
import Combine

class FoodStore : ObservableObject{
    
    @Published var foods: [Food]
    
    init(foods: [Food] = []) {
        self.foods = foods
    }
    
}
