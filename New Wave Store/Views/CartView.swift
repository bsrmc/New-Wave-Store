//
//  CartView.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 12/6/22.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        VStack{
            ScrollView{
                ForEach($cart.products.products.indices){ index in
                    CartItemView(product: $cart.products.products[index])
                }
            }
            HStack{
                Text("Total")
                    .font(Constants.textFont.bold())
                    .padding([.trailing, .leading])
                Spacer()
                Text(String(format: "$%.2f", cart.total))
                    .font(Constants.textFont)
                    .foregroundColor(Color.highlight)
                    .padding([.trailing, .leading])
                
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CartView()
                .environmentObject(Cart())
        }
    }
}
