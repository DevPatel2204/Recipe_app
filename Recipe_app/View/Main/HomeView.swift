//
//  HomeView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeVM:RecipeViewModel
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
        }
    }


#Preview {
    HomeView()
        .environmentObject(RecipeViewModel())
}
