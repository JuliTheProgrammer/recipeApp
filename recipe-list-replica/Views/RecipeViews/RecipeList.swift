//
//  RecipeList.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import SwiftUI

struct RecipeList: View {
    @EnvironmentObject var recipeModel: RecipeModel
    var body: some View {
        NavigationStack {
            List(recipeModel.recipes) { r in
                NavigationLink(destination: {
                    RecipeDetailView(recipe: r)
                }, label: {
                    HStack {
                        Image(r.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(10)
                        Text(r.name)
                    }
                })
            }
            .navigationTitle("Recipes")
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
            .environmentObject(RecipeModel())
    }
}
