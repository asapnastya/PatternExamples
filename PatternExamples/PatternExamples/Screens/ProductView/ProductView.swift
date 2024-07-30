//
//  ProductView.swift
//  PatternExamples
//
//  Created by Анастасия Романова on 7/29/24.
//

import SwiftUI

struct ProductView: View {
    
    @State private var navigateToCart = false
    
    let productStore: ProductStore // Dependency Injection
    
    var body: some View {
        NavigationStack {
            List(productStore.products) { product in
                ProductView_Cell(
                    productItem: product
                )
            }
            .listStyle(.plain)
            .navigationTitle("Our products")
        }
    }
}

#Preview {
    NavigationStack {
        ProductView(productStore: ProductStore())
    }
}
