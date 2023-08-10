//
//  Header.swift
//  MySparClone
//
//  Created by Alexander Sorokin on 10.08.2023.
//

import SwiftUI

struct Header: View {
    @State private var locationInput: String = ""

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "mappin")
                    .foregroundColor(.red)
                
                Text("Москва, Москва и Московская область")
                    .font(.system(size: 16, weight: .regular))
                    .lineLimit(1)
                
                Spacer()
            }
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
            
            Image(systemName: "line.3.horizontal")
                .foregroundColor(Color(.systemGreen))
                .bold()
                .imageScale(.large)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .padding()
    }
}
