//
//  Recipecard.swift
//  Recipe_app
//
//  Created by Dev Patel on 03/06/24.
//

import SwiftUI

struct Recipecard: View {
    var recipe:Recipe
    var body: some View {
        
        Text(recipe.name)
    }
}

#Preview {
    Recipecard(recipe: Recipe.all[0])
}
