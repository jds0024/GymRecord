//
//  CPFKGraph.swift
//  GymRecord
//
//  Created by 정다산 on 11/7/23.
//

import SwiftUI

struct CPFKGraph: View {
    
    @EnvironmentObject var eatTimeCPFK : EatTimeCPFK
    
    var body: some View {
        VStack(){
            BarView2(cpfk: "C",value: CGFloat(eatTimeCPFK.morning["C"]! +
                                              eatTimeCPFK.lunch["C"]! +
                                              eatTimeCPFK.dinner ["C"]!))
            BarView2(cpfk: "P",value: CGFloat(eatTimeCPFK.morning["P"]! +
                                              eatTimeCPFK.lunch["P"]! +
                                              eatTimeCPFK.dinner ["P"]!))
            BarView2(cpfk: "F",value: CGFloat(eatTimeCPFK.morning["F"]! +
                                              eatTimeCPFK.lunch["F"]! +
                                              eatTimeCPFK.dinner ["F"]!))
            
        }
        
    }
}

#Preview {
    CPFKGraph().environmentObject(EatTimeCPFK())
}
