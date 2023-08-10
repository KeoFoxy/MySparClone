//
//  SmallPromoView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct SmallPromoView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                SmallPromoComponent(text: "Абонемент на кофе", bgColor: Color(hex: "#AEEAE7"), image: "coffee_cup")
                
                SmallPromoComponent(text: "Мои скидки", bgColor: Color(hex: "#FBE5F0"), image: "cart_sale")
                
                SmallPromoComponent(text: "Карта в подарок", bgColor: Color(hex: "#D9F2E7"), image: "store_card")
            }
            .padding()
        }
        
        
    }
}

struct SmallPromoView_Previews: PreviewProvider {
    static var previews: some View {
        SmallPromoView()
    }
}
