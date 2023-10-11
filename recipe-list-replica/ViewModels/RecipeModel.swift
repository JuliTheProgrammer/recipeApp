//
//  RecipeModel.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import Foundation

class RecipeModel:ObservableObject {
    //Data
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
    
    //Methods to modify the data
}
