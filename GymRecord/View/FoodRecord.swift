//
//  ContentView.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct FoodRecord: View {
    
    @StateObject var foodStore : FoodStore = FoodStore(foods: foodData)
    //먹은 식사저장하면 여기 배열안에 추가됨
    @EnvironmentObject var eatTimeCPFK : EatTimeCPFK
    
    
    
    
    
    
    var body: some View {
        
        NavigationStack{
            
            
            
            VStack {
                Rectangle()
                    .frame(height: 0)
                
            Spacer()
                CPTK(carb:  (eatTimeCPFK.morning["C"]! +
                            eatTimeCPFK.lunch["C"]! +
                            eatTimeCPFK.dinner ["C"]!),
                     protein: (eatTimeCPFK.morning["P"]! +
                              eatTimeCPFK.lunch["P"]! +
                             eatTimeCPFK.dinner ["P"]!),
                     fat: (eatTimeCPFK.morning["F"]! +
                          eatTimeCPFK.lunch["F"]! +
                          eatTimeCPFK.dinner ["F"]!),
                     kcal: (eatTimeCPFK.morning["K"]! +
                           eatTimeCPFK.lunch["K"]! +
                           eatTimeCPFK.dinner ["K"]!)
                )
                
                .background(Color.white)
                .cornerRadius(11)
                
               
                
                NavigationLink(destination:momentDetail(moment: "아침")){
                    Morning(moment: "아침")
                       
                        
                }
                
                    
                    .padding()
                NavigationLink(destination:momentDetail(moment: "점심")){
                    Morning(moment: "점심")
                }
                        
                        
                    
                    .padding()
                NavigationLink(destination:momentDetail(moment: "저녁")){
                    Morning(moment: "저녁")
                        
                    
                }
                        .padding()
                
                
                    
                    
                    
                    
                    Spacer()
                    
                    
            }
            .background(Color.blue)
                
            }//Nav
        
        
            
            
        }//body
       
    }

#Preview {
    FoodRecord().environmentObject(EatTimeCPFK())
}
