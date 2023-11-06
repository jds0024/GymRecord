//
//  SBD.swift
//  GymRecord
//
//  Created by 정다산 on 11/6/23.
//

import SwiftUI

struct SBD: View {
    var body: some View {
        HStack{
            Spacer()
            Text("S")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("200KG")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
    SBD()
}
