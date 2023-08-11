//
//  ContentView.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct SparView: View {
    var offerItems: [OfferModel] = OfferModel.model
    var adversItems: [AdverstitisingModel] = AdverstitisingModel.model
    var discountItems: [DiscountCardModel] = DiscountCardModel.model
    var productRow: [ProductModel] = ProductModel.model
    var recomendProductRow: [ProductModel] = ProductModel.recommendModel
    
    @State private var searchText = "Москва, Московская область"
    
    var body: some View {
        
        VStack(spacing: 10) {
            SearchBar(text: $searchText)
            
            List {
                CategoryRow(offerModels: offerItems)
                    .listRowInsets(EdgeInsets())
                
                AdvertisingRow(adversModels: adversItems)
                    .listRowInsets(EdgeInsets())
                
                AnnouncementView()
                
                DiscountCardRow(discountModels: discountItems)
                    .listRowInsets(EdgeInsets())
                
                ProductRow(productItems: productRow, category: "Cладкое настроение")
                    .listRowInsets(EdgeInsets())
                
                ProductRow(productItems: recomendProductRow, category: "Рекомендуем")
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
        }
    }
}

struct SparView_Previews: PreviewProvider {
    static var previews: some View {
        SparView()
    }
}
