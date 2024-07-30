//
//  CartManager.swift
//  PatternExamples
//
//  Created by Анастасия Романова on 7/29/24.
//

import SwiftUI

// MARK: - Singleton, Observer реализован через @ObservableObject/@ObservedObject и @Published
final class CartManager: ObservableObject {
    
    @Published var items: [ProductItem] = []
    
    static let shared: CartManager = .init()
    
    private init() {}
    
    func addProduct(_ product: ProductItem) {
        guard let index = items.firstIndex(where: { $0.id == product.id }) else {
            var newProduct = product
            
            newProduct.quantity = 1
            items.append(newProduct)
            
            return
        }
        
        items[index].quantity += 1
    }
    
    func totalCartPriceAmount() -> Int {
        return items.reduce(.zero) { $0 + $1.price * $1.quantity }
    }
}
