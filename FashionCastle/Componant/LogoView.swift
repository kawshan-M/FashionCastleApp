//
//  LogoView.swift
//  FashionCastle
//
//  Created by Maleesha Kawshan on 2023-06-16.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("logo") // Replace "logo" with the name of your logo image asset
            .resizable()
            .frame(width: 120, height: 120) // Adjust the size of the logo needed
            .padding(.leading, -35) // Adjust the horizontal padding as needed
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
