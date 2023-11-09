//
//  BarView2.swift
//  GymRecord
//
//  Created by 정다산 on 11/7/23.
//

import SwiftUI


struct BarView2: View {
    var cpfk: String
    var value: CGFloat
    var body: some View {
        HStack(){
            Text(cpfk)
            ZStack(alignment:.leading){
                Capsule().frame(width: 300,height: 30)
                    .foregroundColor(.white)
                HStack{
                    Capsule().frame(width:value ,height: 30)
                        .foregroundColor(.green)
                        .animation(.default)
                    Text(String(Int(value)))
                }
            }
            
        }
    }
}

#Preview {
    BarView2(cpfk: "d",value: 20)
}
