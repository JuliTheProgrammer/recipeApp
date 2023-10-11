//
//  Recipe.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import Foundation

class Recipe: Decodable, Identifiable {
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var highlights: [String]
    var ingredients: [Ingredient]
    var directions: [String]
}

class Ingredient: Decodable, Identifiable {
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
