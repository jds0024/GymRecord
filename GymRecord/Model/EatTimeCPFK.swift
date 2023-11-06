//
//  CPFKObservable.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

class EatTimeCPFK:ObservableObject{
    
    @Published var morning :[String:Int] = ["C":0,"P":0,"F":0,"K":0]
    @Published var lunch :[String:Int] = ["C":0,"P":0,"F":0,"K":0]
    @Published var dinner :[String:Int] = ["C":0,"P":0,"F":0,"K":0]
    
}
