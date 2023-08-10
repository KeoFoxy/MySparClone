//
//  ContentView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 10) {
            Header()
                .padding(.horizontal)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    CircleBannersView()
                        .padding(.leading)

                    RectBannersView()
                        .padding(.leading)
                }
                .padding(.top, 5)
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


