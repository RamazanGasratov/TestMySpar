//
//  DiscountCardItems.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct DiscountCardItems: View {
    
    var backgroundColor: Color
    
    var model: DiscountCardModel
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(model.label)
                .font(.system(size: 15, weight: .bold))
                .baselineOffset(5.0)
            
            Image(model.image)
                .resizable()
                .frame(width: 70, height: 60)
                .foregroundColor(Color.random)
        }
        .frame(width: 110, height: 140)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

struct DiscountCardItems_Previews: PreviewProvider {
    
    static var previews: some View {
        DiscountCardItems(backgroundColor: Color.random, model: DiscountCardModel.model[0])
    }
}
