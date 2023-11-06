//
//  WorkoutGraph.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import SwiftUI

struct WorkoutGraph: View {
    
    @State var pickerSelected = 0
    @State var SBD :[[CGFloat]] = [
    [50,30,180,100,70,60,20,100,200],
    [10,60,40,150,100,80,100,150,200],
    [20,60,100,150,30,150,73,85,100],
    ]
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
                    BarView(value: SBD[pickerSelected][0], name: "1")
                    BarView(value: SBD[pickerSelected][1], name: "2")
                    BarView(value: SBD[pickerSelected][2], name: "3")
                    BarView(value: SBD[pickerSelected][3], name: "4")
                    BarView(value: SBD[pickerSelected][4], name: "5")
                    BarView(value: SBD[pickerSelected][5], name: "6")
                    BarView(value: SBD[pickerSelected][6], name: "7")
                    BarView(value: SBD[pickerSelected][7], name: "8")
                    BarView(value: SBD[pickerSelected][8], name: "9")
                }
                .animation(.default)
            }
            
        }.background(.blue)
        
        
    }
        
    
    
}

#Preview {
    WorkoutGraph()
}
