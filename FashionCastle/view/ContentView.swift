 //
//  ContentView.swift
//  FashionCastle
//
//  Created by Maleesha Kawshan on 2023-06-13.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id){ Product in
                        ProductCard(product: Product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Fashion Castle"))
            .navigationBarItems(leading: LogoView())
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    CartButton(numberOproducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle() )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
