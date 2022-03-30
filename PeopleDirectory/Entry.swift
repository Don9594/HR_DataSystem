//
//  PersonModel.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import Foundation

class Entry: Identifiable,Decodable{
    var id:UUID?
    var Name:String
    var Address:String
    var Company:String
    var numYears:Int
}
