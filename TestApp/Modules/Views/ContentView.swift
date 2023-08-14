//
//  ContentView.swift
//  TestApp
//
//  Created by Данила on 11.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainScreenView()
            
            Text("Каталог")
            .tabItem {
                Image(systemName: "bag")
                Text("Каталог")
            }
            
            Text("Корзина")
            .tabItem {
                Image(systemName: "cart")
                Text("Корзина")
            }
            
            Text("Профиль")
            .tabItem {
                Image(systemName: "person")
                Text("Профиль")
            }
            
        }.accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


