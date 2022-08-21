//
//  SettingsView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 21/08/2022.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var model: RallyModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Settings")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            ScrollView{
                VStack(alignment: .leading){
                    Text("Display Preferences").bold().padding()
                    Toggle("Use Location for Course Cards", isOn: $model.showLocation).padding([.leading, .trailing]).tint(.blue)
                   
                    Spacer()
                }
            }
        }

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(RallyModel())
    }
}
