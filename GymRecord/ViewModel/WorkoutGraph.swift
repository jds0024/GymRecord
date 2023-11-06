//
//  WorkoutGraph.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import SwiftUI

struct WorkoutGraph: View {
    @State var pickerSelectedItem = 0
    
    @State var dataPoints: [[CGFloat]] = [
        [50,100,150,30,40,100,20],
        [50,100,50,200,10,30,50],
        [10,20,30,50,100,150,80]
    ]
    
    @State var name: [String] = [
    "0","1","2","3","4","5","6","7"
    ]
    
    
    
    var body: some View {
        
//      Rectangle()
//            .cornerRadius(30)
//            .padding()
//            .frame(width: 400 ,height: 300)
        ZStack{
            VStack{
                
                Text("운동기록")
                    .font(.system(size: 34))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Picker(selection: $pickerSelectedItem,label: Text("")){
                    Text("Sq").tag(0)
                    Text("BP").tag(1)
                    Text("DL").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal,24)
                
                HStack(spacing:20){
                    BarView(value: dataPoints[pickerSelectedItem][0], name: "1")
                    BarView(value: dataPoints[pickerSelectedItem][1], name: "2")
                    BarView(value: dataPoints[pickerSelectedItem][2], name: "3")
                    BarView(value: dataPoints[pickerSelectedItem][3], name: "4")
                    BarView(value: dataPoints[pickerSelectedItem][4], name: "5")
                    BarView(value: dataPoints[pickerSelectedItem][5], name: "6")
                    BarView(value: dataPoints[pickerSelectedItem][6], name: "7")
                }
            }
        }
    }
    
    
}

#Preview {
    WorkoutGraph()
}
