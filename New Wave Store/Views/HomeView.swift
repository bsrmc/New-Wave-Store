//
//  HomeView.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/23/22.
//


import SwiftUI
struct HomeView: View {
    @EnvironmentObject var products: ProductList
    @Binding var viewState: ViewState
    @Binding var index: Int
    var body: some View {
        ScrollView{
            ForEach($products.products.indices){ index in
                ProductView(product: $products.products[index])
                    .padding([.bottom], 5)
                    .onTapGesture {
                        viewState = .detail
                        self.index = index
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(.detail), index: Binding.constant(0))
            .environmentObject(ProductList())
    }
}
