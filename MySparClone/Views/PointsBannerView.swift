//
//  PointsBannerView.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

/// Компнонент с бонусной программой
/// Можно кастомизировать qr code и фон самого баннера.

struct PointsBannerView: View {
    var points: Int = 10
    var backgroundImageName: String = "bonusBg"
    var qrCodeImageName: String = "keoqr"

    var body: some View {
        ZStack {
            Image(backgroundImageName)
                .resizable()
                .scaledToFill()

            HStack {
                VStack {
                    // MARK: - Баллы
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
                        .padding(.bottom)
                        
                        Image("wlf")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .cornerRadius(10)
                    }
                    .foregroundColor(.black)
                }

                Spacer()

                // MARK: - QR Code
                Image(qrCodeImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
        }
        .frame(height: 150)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.2), radius: 15, x: 0, y: 10)
    }
}

struct PointsBannerView_Previews: PreviewProvider {
    static var previews: some View {
        PointsBannerView()
    }
}

