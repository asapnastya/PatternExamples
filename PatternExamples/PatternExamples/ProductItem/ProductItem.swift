//
//  ProductItem.swift
//  PatternExamples
//
//  Created by Анастасия Романова on 7/29/24.
//

import SwiftUI

struct ProductItem: Identifiable {
    
    let id = UUID()
    let title: String
    let price: Int
    var quantity: Int = .zero
}

