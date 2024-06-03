//
//  RecipeList.swift
//  Recipe_app
//
//  Created by Dev Patel on 03/06/24.
//

import SwiftUI

struct RecipeList: View {
    var recipes:[Recipe]
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                HStack{
                    Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                        .font(.headline)
                        .bold()
                        .opacity(0.7)
                    
                    Spacer()
                }
                LazyVGrid(columns:[GridItem(.adaptive(minimum: 160), spacing: 15)],spacing: 15) {
                    ForEach (recipes) { recipe in
                        NavigationLink(destination: RecipeView(recipe: recipe)){
                            Recipecard(recipe: recipe)
                        }
                        }
                    }
                .padding(.top)
                }
            .padding(.horizontal)
        }
    }
}

#Preview {
    RecipeList(recipes: Recipe.all)
}
