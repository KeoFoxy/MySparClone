//
//  TabView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct NavTabView: View {
    
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Главная")
                }
                .tag(0)

            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
                .tag(1)

            Text("Корзина")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Корзина")
                }
                .tag(2)

            Text("Профиль")
                .tabItem {
                    Image(systemName:"person.fill")
                    Text("Профиль")
                }
                .tag(3)
        }
        .accentColor(.green)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        NavTabView()
    }
}
