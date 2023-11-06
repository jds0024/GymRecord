//
//  GymRecordApp.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

@main
struct GymRecordApp: App {
    let eatTimeCPFK = EatTimeCPFK()
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(EatTimeCPFK())
        }
    }
}
