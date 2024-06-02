//
//  HomeView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            List(Recipe.all){
                recipe in
            
            Text(recipe.name)
                .navigationTitle("My Recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
