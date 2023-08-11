//
//  DiscountCardRow.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct DiscountCardRow: View {
    var discountModels: [DiscountCardModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    ForEach(discountModels, id: \.self) { discountModel in
                        DiscountCardItems(backgroundColor: Color.random, model: discountModel)
                    }
                }
            }
            .frame(height: 190)
        }
    }
}

struct DiscountCardRow_Previews: PreviewProvider {
    
    static var model = DiscountCardModel.model
    
    static var previews: some View {
        DiscountCardRow(discountModels: model)
    }
}

extension Color {
    static var random: Color {
        let randomRed = Double.random(in: 0...1)
        let randomGreen = Double.random(in: 0...1)
        let randomBlue = Double.random(in: 0...1)
        return Color(red: randomRed, green: randomGreen, blue: randomBlue)
    }
}
