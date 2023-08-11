//
//  ProducRow.swift
//  TestMySpar
//
//  Created by macbook on 11.08.2023.
//

import SwiftUI

struct ProductRow: View {
    
    var productItems: [ProductModel]
    
    var category: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    ForEach(productItems, id: \.self) { productItems in
                        ProductItem(model: productItems)
                    }
                }
                .frame(height: 200)
            }
            .frame(height: 185)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var model = ProductModel.model
    static var category = ProductModel.category
    
    static var previews: some View {
        ProductRow(productItems: model, category: category)
    }
}
