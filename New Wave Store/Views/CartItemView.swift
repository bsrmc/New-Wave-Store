//
//  CartItemView.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 12/6/22.
//

import SwiftUI

struct CartItemView: View {
    @Binding var product: Product
    var body: some View {
        HStack (alignment: .top){
            Image(product.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Rectangle())
                .padding([.top, .leading])
            VStack(alignment: .leading) {
                Text(product.name)
                    .padding([.trailing, .leading])
                    .font(Constants.textFont.bold())
                    .foregroundColor(Color.black)
                Text("Quantity: \(product.quantity)")
                    .padding([.trailing, .leading])
                    .font(Constants.textFont)
                    .foregroundColor(Color.black)
                Spacer()
            }.padding()
            Text(String(format: "$%.2f", product.price))
                .padding()
                .font(Constants.textFont)
                .foregroundColor(Color.highlight)
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding([.trailing, .leading])
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(product: Binding.constant(Product()))
    }
}
