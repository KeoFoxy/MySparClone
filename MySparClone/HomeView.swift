//
//  ContentView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

/// Основное View

struct HomeView: View {
    var body: some View {
        VStack(spacing: 10) {
            Header()
                .padding(.horizontal)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading,spacing: 15) {
                    StoriesView()
                        .padding(.leading)

                    PromotionsView()
                        .padding(.leading)
                    
                    PointsBannerView()
                        .padding(.horizontal)
                    
                    SmallPromoView()
                    
                    Text("Рекомендуем")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    
                    RecomendationsView()
                        
                    Text("Сладкое настроение")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    
                    SweetOfferView()
                }
                .padding(.top, 5)
            }

            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


