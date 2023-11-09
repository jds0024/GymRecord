//
//  TabView.swift
//  GymRecord
//
//  Created by 정다산 on 11/5/23.
//

import SwiftUI
import UIKit

struct MainView: View {
  
    @EnvironmentObject var eatTimeCPFK: EatTimeCPFK
    init() {
            UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    var body: some View {

          
        
            TabView {
                
                FoodRecord()
                    .tabItem {
                        Image(systemName: "fork.knife")
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                            }
                WorkOutRecord()
                    .tabItem {
                        Image(systemName: "dumbbell")
                        
                    }
                MyPage()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                    }
                
            }
            .accentColor(.black)
        }
                
                
            
        }
    


#Preview {
    MainView().environmentObject(EatTimeCPFK())
}
