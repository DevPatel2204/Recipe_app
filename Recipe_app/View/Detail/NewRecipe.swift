//
//  NewRecipe.swift
//  Recipe_app
//
//  Created by Dev Patel on 04/06/24.
//

import SwiftUI

struct NewRecipe: View {
    @State private var name : String = ""
    @State private var Description : String = ""
    @State private var Ingrediants : String = ""
    @State private var Directions : String = ""
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
                ToolbarItem(placement:.navigationBarLeading){
                    Button(action: {
                        
                    }, label: {
                        Label("cancel",systemImage: "xmark")
                    })
                }
                ToolbarItem{
                    Button(action: {
                        
                    }, label: {
                        Label("Done",systemImage: "checkmark")
                    })
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
}
