//
//  EntryModel.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import Foundation


class EntryModel:ObservableObject{
    @Published var entries = [Entry]()
    
    init() {
        entries.self = DataService.getData()
    }
}
