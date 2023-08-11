//
//  SwiftUIView.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import Foundation

struct OfferModel: Hashable {
    var image: String
    var label: String
}

extension OfferModel {
    static var model: [OfferModel] = [
    OfferModel(image: "photo001", label: "Сегодня скидки"),
    OfferModel(image: "photo002", label: "3 рецепта коктейлей"),
    OfferModel(image: "photo003", label: "Привилегии Мой Spar"),
    OfferModel(image: "photo4", label: "Продукты летом"),
    OfferModel(image: "photo005", label: "Пирамида диет")
    ]
}
