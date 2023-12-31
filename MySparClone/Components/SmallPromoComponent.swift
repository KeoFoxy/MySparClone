//
//  SmallPromoComponent.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

/// Маленький баннер для: Абонемент на кофе, мои скидки и тд
/// Не знаю, как называется эта категория :/
/// В качестве входных параметров - `text` - текст компонента
/// `image` - картинка компонента.
/// Но я предполагаю, что картинка должна быть уже на фоне.
/// У компонента можно кастомизировать цвет фона.

struct SmallPromoComponent: View {
    var text: String
    var image: String
    
    var bgColor: Color = Color(hex: "#FBE5F0")
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(text)
                    .font(.system(size: 20, weight: .semibold))
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                Spacer()
            }
            
            Spacer()
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
        }
        .padding(.vertical)
        .frame(width: 140, height: 170)
        .background(bgColor)
        .cornerRadius(10)
        .shadow(color: Color(.systemGray4).opacity(0.5), radius: 10, x: 3, y: 7)
    }
}

struct SmallPromoComponent_Previews: PreviewProvider {
    static var previews: some View {
        SmallPromoComponent(text: "Мои скидки", image: "cart_sale")
    }
}
