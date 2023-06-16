//
//   CartManager.swift
//  FashionCastle
//
//  Created by Maleesha Kawshan on 2023-06-15.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter {$0.id != product.id}
        total -= product.price
    }
}
