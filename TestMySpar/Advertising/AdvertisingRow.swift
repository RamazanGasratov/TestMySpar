//
//  AdvertisingRow.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct AdvertisingRow: View {
    
    var adversModels: [AdverstitisingModel]
    
    var body: some View {
        VStack(alignment: .leading) {

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    ForEach(adversModels, id: \.self) { adversModels in
                        AdvertisingItem(model: adversModels)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct AdvertisingRow_Previews: PreviewProvider {
    
    static var model = AdverstitisingModel.model

    static var previews: some View {
        AdvertisingRow(adversModels: model)
    }
}
