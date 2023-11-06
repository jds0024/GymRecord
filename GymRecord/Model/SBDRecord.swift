//
//  SBDRecord.swift
//  GymRecord
//
//  Created by 정다산 on 11/7/23.
//
import SwiftUI

class SBDRecord: ObservableObject{
    @Published var sbd :[[CGFloat]] = [
    [50,30,180,100,70,60,20,100,200],
    [10,60,40,150,100,80,100,150,200],
    [20,60,100,150,30,150,73,85,100],
    ]
}
