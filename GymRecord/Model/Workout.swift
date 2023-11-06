//
//  WorkOutData.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import Foundation

class Workout: Codable,Identifiable {
    var id:String
    var squart : CGFloat
    var benchPress : CGFloat
    var DeadLift : CGFloat
    
    init(squart: CGFloat, benchPress: CGFloat, DeadLift: CGFloat) {
        self.id = UUID().uuidString
        self.squart = squart
        self.benchPress = benchPress
        self.DeadLift = DeadLift
    }
}
