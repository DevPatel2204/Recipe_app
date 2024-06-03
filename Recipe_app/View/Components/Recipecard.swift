//
//  Recipecard.swift
//  Recipe_app
//
//  Created by Dev Patel on 03/06/24.
//

import SwiftUI

struct Recipecard: View {
    var recipe: Recipe
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                    Text(recipe.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 120 , height: 150)
                        .shadow(color: .black,radius: 3,x: 0,y: 0)
                        .padding(.top)
                }
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40,alignment: .center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .overlay(alignment:.bottom){
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            . frame(maxWidth: 136)
                            .shadow(color: .black,radius: 3,x: 0,y: 0)
                            .padding()
                    }
            }
        }
        .frame(width: 160,height: 217,alignment: .top)
        .background (LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top,endPoint: .bottom) )
        .cornerRadius(20)
        .shadow(color:.black.opacity(0.3), radius:15,x:0,y:10)
    }
}

#Preview {
    Recipecard(recipe: Recipe.all[0])
}
