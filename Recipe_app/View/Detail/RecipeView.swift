//
//  RecipeView.swift
//  Recipe_app
//
//  Created by Dev Patel on 03/06/24.
//

import SwiftUI

struct RecipeView: View {
    var recipe:Recipe
    var body: some View {
        //ScrollView{
            VStack {
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400,height: 200)
                    
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120,height: 100,alignment:.center)
                        .foregroundColor(.white)
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                }
                .frame(height: 140)
                .background (LinearGradient (gradient: Gradient(colors: [Color(.gray) .opacity(0.3), Color(.gray)]), startPoint:.top, endPoint:.bottom))
                Spacer()
                
            }
            
        ScrollView{
            VStack(spacing:30){
                
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .opacity(50)
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading,spacing: 20){
                    Text(recipe.description)
                    VStack(alignment: .leading,spacing: 20) {
                        Text("Ingredients")
                            .font(.headline)
                        Text(recipe.ingredients)
                    }
                    VStack(alignment: .leading,spacing: 20) {
                        Text("Directions")
                            .font(.headline)
                        
                        Text(recipe.directions)
                    }
                    
                }
                .frame(maxWidth: .infinity,alignment: .leading)
            }
            .padding(.horizontal)
            .ignoresSafeArea(.container,edges: .top)
        }
    }
}
    


#Preview {
    RecipeView(recipe: Recipe.all[0])
}
