//
//  WorkOutRecord.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct WorkOutRecord: View {
    var body: some View {
        VStack{
            Text("운동기록")
                .font(.system(size: 35))
                .fontWeight(.medium)
                .padding(.bottom,0)
            
            WorkoutGraph()
                .padding(.top,0)
            Spacer()
            SBD()
                
                
            Spacer()
            SBD()
            Spacer()
            SBD()
            Spacer()
            Spacer()
        }
        .background(.blue)
    }
}

#Preview {
    WorkOutRecord()
}
