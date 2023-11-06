//
//  SBD.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import SwiftUI

struct SBD: View {
    @Binding var sbd :[[CGFloat]]
    @State var addTxt = ""
    var name: Int
    
    
    
    var body: some View {
        HStack{
            Spacer()
            if name == 0 {
                Text("S")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }else if name == 1{
                Text("B")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }else {
                Text("D")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            HStack(alignment:.center){
                TextField("무게", text: $addTxt)
                    .padding()
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 100)
                    
                Text("kg")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            
                                    
            Button(action: { sbd[0].append(CGFloat(Int(addTxt)!))}, label: {
                Text("+")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
            })
            Spacer()
            
            
        }.padding()
            .frame(width: 350)
            .background(Color.white)
            .cornerRadius(15)
            
    }
}

#Preview {
    SBD(sbd: .constant( [
        [50,30,180,100,70,60,20,100,200],
        [10,60,40,150,100,80,100,150,200],
        [20,60,100,150,30,150,73,85,100],
        ]),name: 0)
}
