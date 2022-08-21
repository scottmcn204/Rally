//
//  RallyTabView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 21/08/2022.
//

import SwiftUI

struct RallyTabView: View {
    var body: some View {
        TabView{
            RallyListView()
                .tabItem{
                    VStack {
                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                        Text("Courses")
                    }
                    
                }
            RallyAddView()
                .tabItem{
                    VStack{
                        Image(systemName: "plus.circle.fill")
                        Text("Add New")
                    }
                }
            SettingsView()
                .tabItem{
                    VStack{
                        Image(systemName: "gear.circle.fill")
                        Text("Settings")
                    }
                }
        }
    }
}

struct RallyTabView_Previews: PreviewProvider {
    static var previews: some View {
        RallyTabView()
    }
}
