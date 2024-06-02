//
//  FavoritesView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("Not Yet Customer has Selected any Recipe to Favorites")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavoritesView()
}
