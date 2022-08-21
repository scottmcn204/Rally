//
//  RallyNavigator2App.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import SwiftUI

@main
struct RallyNavigator2App: App {
    var body: some Scene {
        WindowGroup {
            RallyTabView().environmentObject(RallyModel())
        }
    }
}
