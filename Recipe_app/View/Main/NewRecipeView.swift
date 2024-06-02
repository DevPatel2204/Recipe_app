//
//  NewRecipeView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    NewRecipeView()
}
