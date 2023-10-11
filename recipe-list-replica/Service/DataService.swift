//
//  DataService.swift
//  recipe-list-replica
//
//  Created by Julian Leipert on 11.10.23.
//

import Foundation

struct DataService {
    
    static func getLocalData() -> [Recipe] {
        
        //Get the file path
        let path = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if path is not nil
        guard path != nil else {
            return [Recipe]()
        }
        
        //Convert to URL Object
        let url = URL(filePath: path!)
        
        do {
            //Convert to Data Object
            let data = try Data(contentsOf: url)
            
            //Create JSON Decoder
            let decoder = JSONDecoder()
            
            do {
                
                let finalData = try decoder.decode([Recipe].self, from: data)
                
                //Assign every Recipe an ID
                for r in finalData {
                    r.id = UUID()
                }
                
                //Return the finalData
                return finalData
                
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        return [Recipe]()
    }
}
