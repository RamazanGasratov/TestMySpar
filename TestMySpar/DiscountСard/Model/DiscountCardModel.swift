//
//  DiscountCardModel.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import Foundation

struct DiscountCardModel: Hashable {
    var image: String
    var label: String
}

extension DiscountCardModel {
    static var model: [DiscountCardModel] = [
        DiscountCardModel(image: "sale1", label: "Доставка за 1 час"),
        DiscountCardModel(image: "magazi", label: "Добро пожаловать"),
        DiscountCardModel(image: "sale2", label: "Дегустации мороженного"),
        DiscountCardModel(image: "sale3", label: "Нужны сотрудники"),
        DiscountCardModel(image: "sale1", label: "Мои скидки со мной"),
    ]
}
