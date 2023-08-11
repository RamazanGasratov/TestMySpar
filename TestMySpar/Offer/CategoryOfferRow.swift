//
//  CategoryRow.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct CategoryRow: View {
    
    var offerModels: [OfferModel]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 5) {
                    ForEach(offerModels, id: \.self) { offerModel in
                        CategoryOfferItem(offerModel: offerModel)
                    }
                }
                .frame(height: 130)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var model = OfferModel.model
    
    static var previews: some View {
        CategoryRow(offerModels: model)
    }
}
