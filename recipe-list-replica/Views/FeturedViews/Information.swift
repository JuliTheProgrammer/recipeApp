//
//  Information.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import SwiftUI

struct Information: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            Text("Prep Time")
                .font(.headline)
            Text(recipe.cookTime)
                .padding(.vertical, 2)
            Text("Highlights")
                .font(.headline)
            ForEach(recipe.highlights, id: \.self) {h in
              
                    Text(h)
                        .padding(.top, 2)
                  
                }
            }
        }
    }

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information(recipe: RecipeModel().recipes[0])
    }
}
