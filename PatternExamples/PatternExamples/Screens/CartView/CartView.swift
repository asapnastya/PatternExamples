//
//  CartView.swift
//  PatternExamples
//
//  Created by Анастасия Романова on 7/29/24.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var cartManager = CartManager.shared
    
    var body: some View {
        VStack {
            List {
                Section(header: Text("Products in Cart").font(.headline)) {
                    ForEach(cartManager.items) { product in
                        HStack {
                            Text(product.title)
                                .padding(.leading, 4)
                            
                            Spacer()
                            
                            Text("\(product.quantity)x")
                                .bold()
                                .padding(.trailing, 10)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Cart")
            
            Text(
                "Total: €\(cartManager.totalCartPriceAmount())"
            )
            .bold()
            .padding(.bottom, 70)
        }
    }
}



#Preview {
    CartView()
}
