//
//  ContentView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Header()
                .padding(.bottom)
            
            CircleBannersView()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


