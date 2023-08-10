//
//  CircleBanner.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct CircleComponent: View {
    var imageName: String = "myspar"
    var bannerText: String = "Привилегии «Мой Spar»"
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4)) 
                .overlay(Circle().stroke(Color.green, lineWidth: 2))
                .frame(width: 64, height: 64)
            
            Text(bannerText)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(width: 98)
    }
}

struct CircleComponent_Previews: PreviewProvider {
    static var previews: some View {
        CircleComponent()
    }
}
