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
                SmallPromoComponent(text: "Абонемент на кофе", image: "coffee_cup", bgColor: Color(hex: "#AEEAE7"))
                
                SmallPromoComponent(text: "Мои скидки", image: "cart_sale", bgColor: Color(hex: "#FBE5F0"))
                
                SmallPromoComponent(text: "Карта в подарок", image: "store_card", bgColor: Color(hex: "#D9F2E7"))
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
