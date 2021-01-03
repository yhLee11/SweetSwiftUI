//
//  ContentView.swift
//  Swift_test1
//
//  Created by 이연희 on 12/31/20.
//  Copyright © 2020 이연희. All rights reserved.
//

import SwiftUI

struct Home: View {
    let store: Store
    var body: some View {
        NavigationView{
            List(store.products){product in
                NavigationLink(destination: ProductDetailView(product: product)){
                    ProductRow(product: product)
                }
            }.navigationBarTitle("Fruits Mart")
        }
        //VStack{
            //ProductRow(product: productSamples[0])
            //ProductRow(product: productSamples[1])
            //ProductRow(product: productSamples[2])
            //ProductRow(product: productSamples[3])
            //ProductRow(product: productSamples[4])
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home(store: Store())
    }
}
