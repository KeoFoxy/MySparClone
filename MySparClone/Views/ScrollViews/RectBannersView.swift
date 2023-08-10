//
//  RectBannersView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI
/// View не похож на исходник ввиду отсутствия ассетов
/// Картинки, которые я нашел в интернете
/// для этого компонента не достаточно широкие

struct RectBannersView: View {
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

struct RectBannersView_Previews: PreviewProvider {
    static var previews: some View {
        RectBannersView()
    }
}
