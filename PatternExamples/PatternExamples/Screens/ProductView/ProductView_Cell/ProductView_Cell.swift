//
//  ProductView_Cell.swift
//  PatternExamples
//
//  Created by Анастасия Романова on 7/29/24.
//

import SwiftUI

struct ProductView_Cell: View {
    
    @ObservedObject var cartManager = CartManager.shared
    
    let productItem: ProductItem
    
    var body: some View {
        HStack {
            Text(productItem.title)
                .padding(.leading, 4)
            
            Spacer()
            
            Text("€\(productItem.price)")
                .bold()
                .padding(.trailing, 4)
            
            Button("Add") {
                cartManager.addProduct(productItem)
            }
            .buttonStyle(.borderedProminent)
            .padding(.trailing, 10)
        }
    }
}

#Preview {
    ProductView_Cell(productItem: .init(title: "Title", price: 10))
}
