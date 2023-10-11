//
//  FeaturedView.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import SwiftUI

struct FeaturedView: View {
    @EnvironmentObject var recipeModel:RecipeModel
    @State var isSheetShowing = false
    @State var indexPosition = 0
    var body: some View {
        NavigationStack {
            TabView(selection: $indexPosition) {
                ForEach(0..<recipeModel.recipes.count) { index in
                    if recipeModel.recipes[index].featured {
                        VStack {
                            Button {
                                isSheetShowing = true
                            } label: {
                            
                                    VStack {
                                        Image(recipeModel.recipes[index].image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            
                                        Text(recipeModel.recipes[index].name)
                                        
                                      
                                    }
                                    .frame(height: 400)
                                    .cornerRadius(10)
                                    
                                }
                            HStack {
                                Information(recipe: recipeModel.recipes[index])
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                
                        
                    }
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .navigationTitle("Featured")
        }
        .sheet(isPresented: $isSheetShowing) {
            RecipeDetailView(recipe: recipeModel.recipes[indexPosition])
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
            .environmentObject(RecipeModel())
    }
}
