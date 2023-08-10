//
//  ProductComponent.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct ProductComponent: View {
    var price: Double
    var discountPrice: Double?
    var productImage: String
    
    var extra: Bool = false
    var extraText: String = "Супер Цена"
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .center) {
                Image(productImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                // MARK: - Ценник
                HStack(alignment: .center) {
                    if let discountPrice = discountPrice {
                        VStack(alignment: .leading) {
                            HStack{
                                Text(String(format: "%.2f", discountPrice))
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color.black)
                                
                                Text("\u{20BD}/шт")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            
                            Text(String(format: "%.2f", price))
                                .font(.system(size: 18, weight: .bold))
                                .strikethrough()
                                .foregroundColor(Color.gray)
                        }
                    } else {
                        HStack{
                            Text(String(format: "%.2f", price))
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.black)
                            
                            Text("\u{20BD}/шт")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                    
                    // MARK: - Кнопка корзины
                    
                    Button {
                        print("DEBUG: Add to card tap")
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.green)
                                .frame(width: 54, height: 54)
                            
                            Image(systemName: "basket.fill")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        }
                    }

                }
                .padding(.horizontal, 10)
            }
            .frame(width: 200, height: 240)
            .background(.white)
            .cornerRadius(15)
            .shadow(color: Color(.black).opacity(0.1), radius: 5)
            
            // MARK: - Плашка акций
            
            if extra {
                Text(extraText)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(8)
                    .background(
                        RoundedCorners(color: .red, tl: 300, tr: 100, bl: 0, br: 100)
                    )
            }
        }
    }
}

struct ProductComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductComponent(price: 29.90,
                         discountPrice: 19.9,
                         productImage: "sorbet_1")
    }
}
