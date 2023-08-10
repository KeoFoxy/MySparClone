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
    
    var body: some View {
        VStack(alignment: .center) {
            Image(productImage)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
            
            
            HStack(alignment: .center) {
                if let discountPrice = discountPrice {
                    VStack(alignment: .leading) {
                        HStack{
                            Text(String(format: "%.2f", price))
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(Color.black)
                            
                            Text("\u{20BD}/шт")
                                .font(.system(size: 24, weight: .bold))
                        }
                        
                        Text(String(format: "%.2f", price))
                            .font(.system(size: 24, weight: .bold))
                            .strikethrough()
                            .foregroundColor(Color.gray)
                    }
                } else {
                    HStack{
                        Text(String(format: "%.2f", price))
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.black)
                        
                        Text("\u{20BD}/шт")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(.green)
                        .frame(width: 74, height: 74)
                    
                    Image(systemName: "basket.fill")
                        .foregroundColor(.white)
                        .imageScale(.large)
                }
            }
            .padding(.horizontal, 10)
        }
        .frame(width: 270, height: 400)
        .background(.white)
        .cornerRadius(40)
        .shadow(color: Color(.black).opacity(0.2), radius: 10)
    }
}

struct ProductComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductComponent(price: 29.90,
                         discountPrice: 19.9,
                         productImage: "sorbet_1")
    }
}
