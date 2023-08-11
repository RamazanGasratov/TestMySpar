//
//  AdverstisingModel.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

struct AdverstitisingModel: Hashable {
    var image: String
}

extension AdverstitisingModel {
    static var model: [AdverstitisingModel] = [
    AdverstitisingModel(image: "photo01"),
    AdverstitisingModel(image: "photo02"),
    AdverstitisingModel(image: "photo03"),
    AdverstitisingModel(image: "photo04"),
    AdverstitisingModel(image: "photo03"),
    AdverstitisingModel(image: "photo01"),
    AdverstitisingModel(image: "photo02"),
    AdverstitisingModel(image: "photo04")
    ]
}
