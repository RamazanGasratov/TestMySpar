
//
//  CategoryOffer.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct CategoryOfferItem: View {
    
    var offerModel: OfferModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 11) {
            
            Image(offerModel.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 65, height: 65)
                .cornerRadius(32)
                .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
                .overlay(
                    RoundedRectangle(cornerRadius: 33)
                        .stroke(.green, lineWidth: 2)
                )
            
            Text(offerModel.label)
                .foregroundColor(.black)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(width: 110, height: 150)
    }
}

struct CategoryOfferItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryOfferItem(offerModel: OfferModel.model[0])
    }
}
