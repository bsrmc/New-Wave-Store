//
//  ProductView.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/23/22.
//

import SwiftUI

struct ProductView: View {
    @Binding var product: Product

    var body: some View {
        
        HStack (alignment: .top){
            Image(product.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Rectangle())
                .padding()
            VStack(alignment: .leading) {
                    Text(product.name)
                    .padding([.trailing, .leading])
                    .font(Constants.textFont)
                    .foregroundColor(Color.black)
            Text(String(format: "$%.2f", product.price))
                .padding([.trailing, .leading])
                .font(Constants.textFont)
                .foregroundColor(Color.highlight)
            Spacer()
            }.padding()
            Spacer()
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding([.trailing, .leading])
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Binding.constant(Product()))
    }
}
