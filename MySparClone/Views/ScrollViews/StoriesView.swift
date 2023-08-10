//
//  StoriesView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 5) {
                CircleComponent(imageName: "myspar", bannerText: "Привилегии «Мой Spar»")
                CircleComponent(imageName: "telegram", bannerText: "Мы в соцсетях")
                CircleComponent(imageName: "cocktail", bannerText: "3 рецепта коктейлей")
                CircleComponent(imageName: "tasting", bannerText: "Дегустаци в SPAR")
                CircleComponent(imageName: "drinks", bannerText: "Лучший квас")
                
            }
            .padding(.top, 5)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
