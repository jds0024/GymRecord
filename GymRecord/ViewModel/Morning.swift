//
//  Morning.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct Morning: View {
    
    var moment: String
    @EnvironmentObject var morning:EatTimeCPFK
   
    
    var body: some View {
        NavigationStack{
            HStack{
                Spacer()
                Text(moment)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                Spacer()
                if moment == "아침"{
                    Text("\(morning.morning["K"]!)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.black)
                        
                }else if moment == "점심"{
                    Text("\(morning.lunch["K"]!)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.black)
                }else{
                    Text("\(morning.dinner["K"]!)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.black)
                }
                Text("Kcal")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                Spacer()
                
                
                NavigationLink(destination: FoodPlus(moment: moment)){
                    Text("+")
                        .font(.system(size: 30))
                        
                }
            }
            .padding()
            
        }
        
    }
}

#Preview {
    Morning(moment: "아침").environmentObject(EatTimeCPFK())
}
