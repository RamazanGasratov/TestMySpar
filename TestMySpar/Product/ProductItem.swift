//
//  ProductItem.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct ProductItem: View {
    
    var model: ProductModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(model.image)
                .resizable()
                .frame(width: 90, height: 100)
                .cornerRadius(15)
            HStack(alignment: .center, spacing: 4) {
                
                HStack(spacing: -10) {
                    
                    Text("\(model.price)")
                        .frame(width: 45, height: 10)
                        .font(.headline)
                    
                    HStack(spacing: -8) {
                        Text("₽")
                            .frame(width: 20, height: 10)
                            .font(.caption)
                            .foregroundColor(.black)
                        Text("/")
                            .frame(width: 10, height: 10)
                            .font(.caption)
                            .foregroundColor(.black)
                        Text("шт")
                            .frame(width: 25, height: 10)
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                }
                Button {
                    print("переход в корзину")
                } label: {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Image(systemName: "basket.fill")
                                .font(.caption)
                                .foregroundColor(Color.white)
                        )
                }
            }
        }
        .frame(width: 130, height: 180)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}


struct ProductItem_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductItem(model: ProductModel.model[0])
    }
}
