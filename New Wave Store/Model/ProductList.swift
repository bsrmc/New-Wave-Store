//
//  ProductList.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/21/22.
//

import Foundation

class ProductList: ObservableObject {
    @Published var products: [Product] = [Product(name: "wPen", description: "the best pen ever", picture: "wPen", quantity: 0, price: 5.0), Product(name: "nwPhone", description: "good phone", picture: "nwPhone", quantity: 0, price: 1000.0), Product(name: "NW-PC", description: "pc!", picture: "NW-PC", quantity: 0, price: 500.0), Product(name: "software", description: "great software", picture: "software", quantity: 0, price: 100.0)]
}
