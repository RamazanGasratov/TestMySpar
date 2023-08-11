//
//  AdvertisingItem.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct AdvertisingItem: View {

    var model: AdverstitisingModel
    
    var body: some View {
        Image(model.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 300, height: 165)
                .cornerRadius(15)
    }
}

struct AdvertisingItem_Previews: PreviewProvider {
    static var previews: some View {
        AdvertisingItem(model: AdverstitisingModel.model[0])
    }
}
