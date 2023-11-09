//
//  FoodDetailView.swift
//  GymRecord
//
//  Created by 정다산 on 11/4/23.
//

import SwiftUI

struct FoodPlus: View {
    
    @StateObject var foodStore  = FoodStore(foods: foodData)
    @EnvironmentObject var eatTimeCPFK: EatTimeCPFK
    @State var search = ""
    var moment: String
    
    
    
    
    
    
    
    var body: some View {
        NavigationStack{
        VStack(){
            Text(moment)
                .font(.system(size: 20))
            if moment == "아침"{
                CPTK(carb: eatTimeCPFK.morning["C"]!,
                     protein: eatTimeCPFK.morning["P"]!,
                     fat: eatTimeCPFK.morning["F"]!,
                     kcal: eatTimeCPFK.morning["K"]!)
                
            }else if moment == "점심"{
                CPTK(carb: eatTimeCPFK.lunch["C"]!,
                     protein: eatTimeCPFK.lunch["P"]!,
                     fat: eatTimeCPFK.lunch["F"]!,
                     kcal: eatTimeCPFK.lunch["K"]!)
            }else {
                CPTK(carb: eatTimeCPFK.dinner["C"]!,
                     protein: eatTimeCPFK.dinner["P"]!,
                     fat: eatTimeCPFK.dinner["F"]!,
                     kcal: eatTimeCPFK.dinner["K"]!)
            }
            
                List{
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField("검색할 내용을 입력하세요", text: $search)
                    }
                    ForEach(0..<foodStore.foods.count,id: \.self){i in
                        
                            HStack{
                                VStack(alignment:.leading){
                                    Text(foodStore.foods[i].name)
                                        .font(.system(size: 20))
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    
                                    Text("Carb: \(foodStore.foods[i].carb)")
                                    Text("Protein: \(foodStore.foods[i].protein)")
                                    Text("Fat: \(foodStore.foods[i].fat)")
                                    Text("Kcal: \(foodStore.foods[i].kcal)")
                                    
                                }
                                Spacer()
                                Button(action: { 
                                    if moment == "아침"{
                                        eatTimeCPFK.morning["C"]! += foodStore.foods[i].carb
                                        eatTimeCPFK.morning["P"]! += foodStore.foods[i].protein
                                        eatTimeCPFK.morning["F"]! += foodStore.foods[i].fat
                                        eatTimeCPFK.morning["K"]! += foodStore.foods[i].kcal
                                    }else if moment == "점심"{
                                        eatTimeCPFK.lunch["C"]! += foodStore.foods[i].carb
                                        eatTimeCPFK.lunch["P"]! += foodStore.foods[i].protein
                                        eatTimeCPFK.lunch["F"]! += foodStore.foods[i].fat
                                        eatTimeCPFK.lunch["K"]! += foodStore.foods[i].kcal
                                    }else{
                                        eatTimeCPFK.dinner["C"]! += foodStore.foods[i].carb
                                        eatTimeCPFK.dinner["P"]! += foodStore.foods[i].protein
                                        eatTimeCPFK.dinner["F"]! += foodStore.foods[i].fat
                                        eatTimeCPFK.dinner["K"]! += foodStore.foods[i].kcal
                                    }
                                    
                                },
                                       label: {
                                    Text("+")
                                        .font(.system(size: 40))
                                        .fontWeight(.bold)
                                })
                                
                            }//HStack
                            
                        
                        
                    }//forEach
                    
                    
                    .onMove(perform: { indices, newOffset in
                        foodStore.foods.move(fromOffsets: indices, toOffset: newOffset)
                    })
                    .onDelete(perform: { indexSet in
                        foodStore.foods.remove(atOffsets: indexSet)
                    })
                }//L
                .listStyle(InsetListStyle())
                .toolbar{EditButton()}
                
                
            
        }//V
        
        
      }
        
    }
}

                                               

#Preview {
    FoodPlus( moment: "아침").environmentObject(EatTimeCPFK())
}
