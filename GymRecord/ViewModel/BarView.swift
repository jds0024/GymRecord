//
//  BarView.swift
//  GymRecord
//
//  Created by 정다산 on 11/7/23.
//

import SwiftUI

struct BarView: View {
    var value: CGFloat
    var name: String
    @Binding var num: CGFloat
    
    var body: some View {
        VStack{
            ZStack(alignment:.bottomTrailing){
                Capsule()
                    .frame(width: 30,height: 200)
                    .foregroundStyle(.white)
                ZStack(alignment:.top){
                    Capsule()
                        .frame(width: 30,height: value)
                        .foregroundStyle(.green)
                    Text("\(Int(num))")
                }
                
            }
            Text(name)
        }
    }
}

//#Preview {
//    BarView(value: 100, name: "BenchPress",num: .constant(10))
//}
