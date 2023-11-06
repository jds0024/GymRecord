//
//  WorkOutRecord.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct WorkOutRecord: View {
    @EnvironmentObject var sbd: SBDRecord
    var body: some View {
        
        
        VStack{
            Text("운동기록")
                .font(.system(size: 35))
                .fontWeight(.medium)
                .padding(.bottom,0)
                
            
            WorkoutGraph()
                .padding(.top,0)
            Spacer()
            SBD(name: 0)
                
                
            Spacer()
            SBD(name: 1)
            Spacer()
            SBD(name: 2)
            Spacer()
            Spacer()
        }
        .background(.blue)
    }
}

#Preview {
    WorkOutRecord().environmentObject(SBDRecord())
}
