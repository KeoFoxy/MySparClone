//
//  SweetOfferView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct SweetOfferView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ProductComponent(price: 99.90, productImage: "sorbet_1")
                    ProductComponent(price: 99.90, productImage: "sorbet_2")
                    ProductComponent(price: 99.90, productImage: "sorbet_3")
                }
                .padding()
            }
        }
    }
}

struct SweetOfferView_Previews: PreviewProvider {
    static var previews: some View {
        SweetOfferView()
    }
}
