//
//  DataService.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import Foundation

class DataService{
    
    static func getData()->[Entry]{
        let pathString = Bundle.main.path(forResource: "EntryData", ofType:"json")
        
        guard pathString != nil else {
            return [Entry]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let entryData = try decoder.decode([Entry].self, from: data)
                
                for r in entryData{
                    r.id = UUID()
                }
                
                return entryData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        
        return [Entry]()
    }
}
