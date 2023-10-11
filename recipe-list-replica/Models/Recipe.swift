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
    var totalTime: String
    var servings: Int
    var highlights: [String]
    var ingredients: [Ingredient]
    var directions: [String]
}

struct Ingredient: Decodable {
    var name: String
    var num: Int
}
