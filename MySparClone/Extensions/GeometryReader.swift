//
//  GeometryReader.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 11.08.2023.
//

import SwiftUI

/// Плалшка, которая отрисовывается вверху
/// карточки продукта с разными надписями
/// `Супер цена`, `Удар по ценам` и тд.

struct RoundedCorners: View {
    var color: Color = .black
    var tl: CGFloat = 0.0 // Радиус верхнего-левого угла
    var tr: CGFloat = 0.0 // Радиус верхнего-правого угла
    var bl: CGFloat = 0.0 // Радиус нижнего-левого угла
    var br: CGFloat = 0.0 // Радиус нижнего-правого угла
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                }
                .fill(self.color)
                .opacity(0.5)
        }
    }
}
