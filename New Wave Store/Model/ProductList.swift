//
//  ProductList.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/21/22.
//

import Foundation
class ProductList : ObservableObject{
    @Published var products : [Product]
    init(products: [Product] = [Product(name: "NW-PC", description: "best!", picture: "NW-PC", quantity: 3000, price: 1999.50), Product(name: "nwPhone", description: "best!", picture: "nwPhone", quantity: 10000, price: 4999.99), Product(name: "wPen", description: "best!", picture: "wPen", quantity: 250, price: 450.50), Product(name: "software", description: "best!", picture: "software", quantity: 10, price: 4.50)]){
        
        self.products = products
    }
}
