//
//  Product.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/21/22.
//

import Foundation

class Product {
    var name: String
    var description: String
    var picture: String
    var quantity: Int
    var price: Double
    init(name: String = "pen", description: String = "pen", picture: String = "wPen", quantity: Int = 0, price: Double = 0.0){
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
}
