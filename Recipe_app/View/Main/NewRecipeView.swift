//
//  NewRecipeView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddrecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe manually"){
                showAddrecipe = true
            }
            .navigationTitle("New Recipe")
        }
        
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddrecipe, content: {
            NewRecipe()
        })
    }
}

#Preview {
    NewRecipeView()
}
