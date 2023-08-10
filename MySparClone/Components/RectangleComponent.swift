//
//  RectangleComponent.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct RectangleComponent: View {
    var imageName: String = "spar_sales"
    
    var body: some View {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(height: 200)
    }
}

struct RectangleComponent_Previews: PreviewProvider {
    static var previews: some View {
        RectangleComponent()
    }
}
