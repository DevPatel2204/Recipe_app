//
//  ContentView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Tabbar()
    }
}

#Preview {
    ContentView()
        .environmentObject(RecipeViewModel())
}
