//
//  RecipeViewModel.swift
//  Recipe_app
//
//  Created by Dev Patel on 04/06/24.
//

import Foundation

class RecipeViewModel:ObservableObject{
    @Published private(set) var recipe: [Recipe] = []
    
    init(){
        recipe = Recipe.all
    }
}
