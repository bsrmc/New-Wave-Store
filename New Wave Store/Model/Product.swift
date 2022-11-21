//
//  Product.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/21/22.
//

import Foundation

class Product: ObservableObject {
    @Published var name: String
    @Published var description: String
    @Published var picture: String
    @Published var price: Double
    @Published var quantity: Int
    init(name: String = "pen", description: String = "the best pen ever", picture: String = "wPen", quantity: Int = 0, price: Double = 5.0){
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
}
