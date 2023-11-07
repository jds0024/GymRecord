//
//  CPTK.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct CPTK: View {
    
    
    var carb:Int
    var protein: Int
    var fat: Int
    var kcal: Int
    
    var body: some View {
        HStack{
            VStack{
                
                    
//                    Circle().stroke(Color.yellow,lineWidth:10 )
                    
                        Text("Carb")
                            .font(.system(size: 22))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.vertical,5)
                        Text("\(carb)g")
                    
                
                
                }
            .padding()
            VStack{
                Text("protein")
                    .font(.system(size: 22))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical,5)
                Text("\(protein)g")
                }
            .padding()
            VStack{
                Text("fat")
                    .font(.system(size: 22))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical,5)
                Text("\(fat)g")
                }
            .padding()
            VStack{
                Text("Kcal")
                    .font(.system(size: 22))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical,5)
                Text("\(kcal)kcal")
                    
                }
            
            .padding()
        }.background(Color.white)
            .cornerRadius(20)
        
        
        
    }
}

#Preview {
    CPTK(carb: 0, protein: 0, fat: 0, kcal: 0)
}
