//
//  MainScreenView.swift
//  TestApp
//
//  Created by Данила on 14.08.2023.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        VStack {
            SearchBox()
            // MARK: Main ScrollView
            ScrollView {
                // MARK: Stories
                ScrollView(.horizontal) {
                    StoriesView()
                }
                // MARK: First Info
                ScrollView(.horizontal) {
                    FirstInfoBlockView()
                }
                // MARK: Bonuses
                BonusView()
                // MARK: Benefits
                ScrollView(.horizontal) {
                    BenefitsView()
                }
                // MARK: Recommendations
                ProductsTitleView(title: "Рекомендуем")
                ScrollView(.horizontal) {
                    ProductsView(products: recommendations)
                }
                // MARK: "Sweet Mood" 
                ProductsTitleView(title: "Сладкое настроение")
                ScrollView(.horizontal) {
                    ProductsView(products: sweetMood)
                }
                
            }
            .onAppear {
                UIScrollView.appearance().showsHorizontalScrollIndicator = false
                UIScrollView.appearance().showsVerticalScrollIndicator = false
            }
        }
        .tabItem {
            Image(systemName: "tree.circle")
            Text("Главная")
        }
    }
}
