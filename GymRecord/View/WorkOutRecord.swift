//
//  WorkOutRecord.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct WorkOutRecord: View {
    @State var sbd :[[CGFloat]] = [
    [50,30,180,100,70,60,20,100,200],
    [10,60,40,150,100,80,100,150,200],
    [20,60,100,150,30,150,73,85,100],
    ]
    var body: some View {
        
        
        VStack{
            Text("운동기록")
                .font(.system(size: 35))
                .fontWeight(.medium)
                .padding(.bottom,0)
                
            
            WorkoutGraph(SBD: $sbd)
                .padding(.top,0)
            Spacer()
            SBD(sbd: $sbd,name: 0)
                
                
            Spacer()
            SBD(sbd: $sbd,name: 1)
            Spacer()
            SBD(sbd: $sbd,name: 2)
            Spacer()
            Spacer()
        }
        .background(.blue)
    }
}

#Preview {
    WorkOutRecord()
}
