//
//  RectBannersView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct PromotionsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                RectangleComponent(imageName: "spar_sales2")
                RectangleComponent()
                RectangleComponent(imageName: "spar_sales2")
            }
        }
    }
}

struct PromotionsView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionsView()
    }
}
