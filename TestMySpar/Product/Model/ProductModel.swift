//
//  ProductModel.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import Foundation

struct ProductModel: Hashable {
    var image: String
    var price: Int
}

extension ProductModel {
    static var model: [ProductModel] = [
        ProductModel(image: "ice1", price: 150),
        ProductModel(image: "ice2", price: 350),
        ProductModel(image: "ice3", price: 200),
        ProductModel(image: "ice4", price: 450),
        ProductModel(image: "ice2", price: 150),
    ]
    
    static var recommendModel: [ProductModel] = [
        ProductModel(image: "recomend1", price: 250),
        ProductModel(image: "recomend2", price: 350),
        ProductModel(image: "recomend3", price: 400),
        ProductModel(image: "recomend1", price: 100),
        ProductModel(image: "recomend2", price: 250),
    ]
    
    static var category: String = ""
}
