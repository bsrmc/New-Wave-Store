//
//  ContentView.swift
//  New Wave Store
//
//  Created by Busra Coskun (student LM) on 11/21/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var products: ProductList
    @State var viewState: ViewState = ViewState.list
    @State var index: Int = 0
    var body: some View {
        
        TabView{
            if viewState == .list{
                HomeView(viewState: $viewState, index: $index)
                    .tabItem{
                        Image(systemName: "house")
                        Text("store")
                    }
            }
            else{
                ProductDetailView(product: $products.products[index], viewState: $viewState)
                    .tabItem{
                        Image(systemName: "house")
                        Text("store")
                    }
            }
            CartView()
                .tabItem{
                    Image(systemName: "cart")
                    Text("cart")
                }
        }.accentColor(Color.highlight)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ProductList())
            .environmentObject(Cart())
    }
}
