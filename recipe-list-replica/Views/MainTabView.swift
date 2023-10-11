//
//  ContentView.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            //MARK: Featured View
            FeaturedView()
                .tabItem {
                    Image(systemName: "star")
                }
            
            //MARK: Recipe View
            RecipeList()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
