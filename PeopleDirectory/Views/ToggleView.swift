//
//  ContentView.swift
//  PeopleDirectory
//
//  Created by Don wijesinghe on 3/29/22.
//

import SwiftUI

struct ToggleView: View {
    @EnvironmentObject var model:EntryModel
    var body: some View {
        VStack{
            Text("Display Preferences")
                .font(.largeTitle)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Spacer()
            Toggle("Show name:", isOn:$model.showName)
            Toggle("Show Address:", isOn:$model.showAddress)
            Toggle("Show Company:", isOn:$model.showCompany)
            Toggle("Show Years of work experience:", isOn:$model.showNumYears)
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
