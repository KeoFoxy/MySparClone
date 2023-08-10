//
//  BonusesCard.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

//import SwiftUI

//struct BonusesCard: View {
//    var body: some View {
//        ZStack {
//            HStack(alignment: .bottom) {
//                Text("0")
//                    .font(.system(size: 60, weight: .bold))
//
//                Text("бонусов")
//                    .font(.system(size: 20, weight: .bold))
//            }
//        }
//    }
//}
//
//struct BonusesCard_Previews: PreviewProvider {
//    static var previews: some View {
//        BonusesCard()
//    }
//}

import SwiftUI

struct PointsBannerView: View {
    var points: Int = 10
    var backgroundImageName: String = "bonusBg"
    var qrCodeImageName: String = "keoqr"

    var body: some View {
        ZStack {
            // Фоновое изображение
            Image(backgroundImageName)
                .resizable()
                .scaledToFill()

            HStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(alignment: .bottom, spacing: 15) {
                            Text("\(points)")
                                .font(.system(size: 50))
                                .fontWeight(.bold)

                            Text(" баллов")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(.bottom, 8)
                            
                        }
                    }
                    .foregroundColor(.black)
                    
                    
                } // Цвет текста

                Spacer()

                Image(qrCodeImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
        }
        .frame(height: 200)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
    }
}

struct PointsBannerView_Previews: PreviewProvider {
    static var previews: some View {
        PointsBannerView()
    }
}

