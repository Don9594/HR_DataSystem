//
//  ListView.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import SwiftUI

struct ListView: View {
    //@ObservedObject var model = EntryModel()
    @EnvironmentObject var model:EntryModel
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("People")
                .font(.largeTitle)
                .fontWeight(.semibold)
                
               
            List(model.entries){ r in
                VStack(alignment: .leading) {
                    
                    if model.showName==true {
                        Text("Name: \(r.Name)")
                    }
                    if model.showAddress==true {
                        Text("Address: \(r.Address)")
                    }
                    if model.showCompany==true {
                        Text("Company: \(r.Company)")
                    }
                    if model.showNumYears==true {
                        Text("Years of Experience: \(r.numYears)")
                    }
                    
                }
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
