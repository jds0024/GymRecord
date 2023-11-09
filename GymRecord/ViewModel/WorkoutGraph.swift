//
//  WorkoutGraph.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import SwiftUI
import Charts

struct WorkoutGraph: View {
    
    @State var pickerSelected = 0
    
    @EnvironmentObject var SBD: SBDRecord
    
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
                    ForEach(0..<SBD.sbd[pickerSelected].count,id:\.self){
                        BarView(value: SBD.sbd[pickerSelected][$0], name: "\($0+1)",num:  $SBD.sbd[pickerSelected][$0])
                        
                    }

                }
                .animation(.default)
            }
           
                
                
               
            
            
            
            
            
        }.background(.blue)
        
        
    }
        
    
    
}

#Preview {
    WorkoutGraph().environmentObject(SBDRecord())
}
