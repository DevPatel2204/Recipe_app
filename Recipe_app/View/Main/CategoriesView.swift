//
//  CategoriesView.swift
//  Recipe_app
//
//  Created by Dev Patel on 29/05/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView{
            Text("Categories")
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
