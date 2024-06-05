//
//  NewRecipe.swift
//  Recipe_app
//
//  Created by Dev Patel on 04/06/24.
//

import SwiftUI

struct NewRecipe: View {
    //@EnvironmentObject var recipeVM:RecipeViewModel
    @State private var name : String = ""
    @State private var Description : String = ""
    @State private var Ingrediants : String = ""
    @State private var Directions : String = ""
    @State private var navigatetorecipe = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Name")){
                    TextField("Recipe Name",text: $name)
                }
                Section(header:Text("Description")){
                    TextEditor(text: $Description)
                }
                Section(header:Text("Ingrediants")){
                    TextEditor(text: $Ingrediants)
                }
                Section(header:Text("Directions")){
                    TextEditor(text: $Directions)
                }
            }

            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        dismiss()
                    }, label: {
                        Label("cancel",systemImage: "xmark")
                    })
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigatetorecipe) {
                        RecipeView(recipe:Recipe.all.sorted{ $0.datepublished > $1.datepublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button(action: {
                            //saveRecipe()
                            navigatetorecipe = true
                        }, label: {
                            Label("Done",systemImage: "checkmark")
                        })
                        
                    }
                    .disabled(name.isEmpty)

                  
                }
                
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}


#Preview {
    NewRecipe()
        .environmentObject(RecipeViewModel())
}

//extension NewRecipeView {
//    private func saveRecipe(){
//        recipeVM.addRecipe(recipe: recipe)
//    }
//}
