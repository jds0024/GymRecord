//
//  MyPage.swift
//  GymRecord
//
//  Created by 정다산 on 11/9/23.
//

import SwiftUI

struct MyPage: View {
    @State var name = "정다산"
    @State var carbSlider:Float = 0
    @State var proteinSlider:Float = 0
    @State var fatSlider:Float = 0
   
    var body: some View {
        VStack{
            Text("MyPage")
                .font(.system(size: 35))
                .fontWeight(.medium)
                .padding()
            Text("CARB : \(Int(carbSlider))g")
            Slider(value: $carbSlider,in: 0...300)
                .padding(.horizontal,30)
            
            Text("CARB : \(Int(proteinSlider))g")
            Slider(value: $proteinSlider,in: 0...300)
                .padding(.horizontal,30)
            
            Text("CARB : \(Int(fatSlider))g")
            Slider(value: $fatSlider,in: 0...300)
                .padding(.horizontal,30)
            
            Text("Kcal")
            Text("\(kcalCalculator(c: Int(carbSlider), p: Int(proteinSlider), f: Int(fatSlider)))")
                .animation(.default)
        }
    }
    func kcalCalculator(c:Int,p:Int,f:Int) -> Int{
        ((c*4) + (p*4) + (f*9))
    }
}

#Preview {
    MyPage()
}
