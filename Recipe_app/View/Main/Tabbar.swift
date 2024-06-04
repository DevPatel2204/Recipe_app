//
//  Tabbar.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
//            CategoriesView()
//                .tabItem {
//                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
//                }
//            
            NewRecipeView()
                .tabItem {
                    Label("New Recipe", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    Tabbar()
}
