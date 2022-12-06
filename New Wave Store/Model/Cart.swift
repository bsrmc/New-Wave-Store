//
//  Cart.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 12/4/22.
//
import Foundation
class Cart: ObservableObject{
    @Published var products: ProductList = ProductList(products: [])
    
    var total: Double{
        //iterate through the items in productlist and multiply each qunatity * price
        var t = 0.0
        for p in products.products{
            t += Double(p.quantity) * p.price
        }
        return t
    }
}
