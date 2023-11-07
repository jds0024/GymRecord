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
    let sbdRecord = SBDRecord()
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(EatTimeCPFK())
                .environmentObject(SBDRecord())
        }
    }
}
// 그래프에 1,2,3,4,5, 날짜로 바꾸기
//식단 날짜별로 기록
//식단 그래프 추가
//momentDeatil 구현
