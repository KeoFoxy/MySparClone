//
//  RecomendationsView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 11.08.2023.
//

import SwiftUI

struct RecomendationsView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ProductComponent(price: 259.90, productImage: "lamber")
                    ProductComponent(price: 99.90, productImage: "evervess", extra: true, extraText: "Супер цена")
                    ProductComponent(price: 489.90, discountPrice: 309.90, productImage: "zewa",  extra: true, extraText: "Удар по ценам")
                }
                .padding()
            }
        }
    }
}

struct RecomendationsView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationsView()
    }
}
