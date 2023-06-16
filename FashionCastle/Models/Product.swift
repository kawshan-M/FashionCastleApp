//
//  Product.swift
//  FashionCastle
//
//  Created by Maleesha Kawshan on 2023-06-13.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Premium Black Tshirt", image: "tee4", price: 25),
                 Product(name: "Premium Cream Tshirt", image: "tee3", price: 25),
                 Product(name: "Sky Blue Denim", image: "denim1", price: 46),
                 Product(name: "Red Wine Sweter", image: "sweter1", price: 39),
                 Product(name: "Blue POLO ", image: "pack1", price: 55),
                 Product(name: "Leather Side Bag", image: "bag1", price: 349),
                 Product(name: "Tissot Mens Premium Watch", image: "watch1", price: 220)]

