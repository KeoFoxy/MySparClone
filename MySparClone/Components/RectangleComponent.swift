//
//  RectangleComponent.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

/// Большой баннер со скидками
/// Я не очень понял, что он из себя представляет
/// Как мне кажется, это просто изображение с фрэймом
/// Картинки также нашел в интернете, но баннер больше, чем в исходнике
/// Это из-за размера картинки, она узкая и чрезмерно высокая
/// Однако, если я не прав, то могу сверстать баннер отдельно

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
