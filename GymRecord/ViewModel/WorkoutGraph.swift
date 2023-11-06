//
//  WorkoutGraph.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import SwiftUI

struct WorkoutGraph: View {
    
    @State var pickerSelected = 0
    
    @Binding var SBD :[[CGFloat]]
    
    var pickerTxt = ["0","1","2","3","4","5","6"]
    
    
    
    
    

    
    
    
    var body: some View {
        VStack{
            
            Picker(selection: $pickerSelected, label: Text("")){
                Text("스쿼트").tag(0)
                Text("벤치프레스").tag(1)
                Text("데드리프트").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal,24)
            
            ScrollView(.horizontal){
                HStack(spacing: 20){
                    ForEach(0..<SBD[pickerSelected].count,id:\.self){
                        BarView(value: SBD[pickerSelected][$0], name: "\($0+1)")
                        
                    }

                }
                .animation(.default)
            }
            
        }.background(.blue)
        
        
    }
        
    
    
}

#Preview {
    WorkoutGraph(SBD: .constant([
        [50,30,180,100,70,60,20,100,200],
        [10,60,40,150,100,80,100,150,200],
        [20,60,100,150,30,150,73,85,100],
        ]))
}
