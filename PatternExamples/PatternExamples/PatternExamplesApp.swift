//
//  PatternExamplesApp.swift
//  PatternExamples
//
//  Created by Анастасия Романова on 7/29/24.
//

import SwiftUI

@main
struct PatternExamplesApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ProductView(productStore: ProductStore())
                    .tabItem {
                        Label("Store", systemImage: "tray")
                    }
                CartView()
                    .tabItem { Label("Cart", systemImage: "cart")
                    }
            }
        }
    }
}
