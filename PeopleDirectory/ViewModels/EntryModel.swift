//
//  EntryModel.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import Foundation


class EntryModel:ObservableObject{
    @Published var entries = [Entry]()
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showNumYears = true
    
    init() {
        entries.self = DataService.getData()
    }
}
