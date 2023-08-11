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
            
            ListWithoutSepatorsAndMargins {
                Group {
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
            }
        }
    }
}

struct SparView_Previews: PreviewProvider {
    static var previews: some View {
        SparView()
    }
}

//MARK: - Написал расширение для для List так как для версии IOS 14 поля между секциями просто так не убераются
struct NoButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}

struct ListWithoutSepatorsAndMargins<Content: View>: View {
    let content: () -> Content
    
    var body: some View {
        
        ScrollView {
            LazyVStack(spacing: 0) {
                self.content()
            }
            .buttonStyle(NoButtonStyle())
        }
    }
}
