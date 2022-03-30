//
//  TabView.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        
        TabView{
            
            ListView().tabItem{
                VStack{
                    Image(systemName: "person.3.fill")
                }
            }
            
            ToggleView().tabItem{
                VStack{
                    Image(systemName: "gearshape")
                }
            }
            
        }.environmentObject(EntryModel())
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
