//
//  RecipeDetailView.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            Text(recipe.name)
        }
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: RecipeModel().recipes[0])
    }
}
