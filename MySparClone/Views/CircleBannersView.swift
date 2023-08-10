//
//  CircleBannersView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct CircleBannersView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 5) {
                CircleBanner()
                CircleBanner(imageName: "telegram", bannerText: "Мы в соцсетях")
                CircleBanner(imageName: "cocktail", bannerText: "3 рецепта коктейлей")
                CircleBanner(imageName: "tasting", bannerText: "Дегустаци в SPAR")
                CircleBanner(imageName: "drinks", bannerText: "Лучший квас")
                
            }
            .padding(5)
        }
    }
}

struct CircleBannersView_Previews: PreviewProvider {
    static var previews: some View {
        CircleBannersView()
    }
}
