//
//  CartButton.swift
//  FashionCastle
//
//  Created by Maleesha Kawshan on 2023-06-15.
//

import SwiftUI

struct CartButton: View {
    var numberOproducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart" )
                .padding(.top, 7)
            
            if numberOproducts > 0{
                Text("\(numberOproducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOproducts: 1)
    }
}
