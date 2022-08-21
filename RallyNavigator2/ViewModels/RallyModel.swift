//
//  RallyModel.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import Foundation

class RallyModel: ObservableObject{
    @Published var rallys = [Rally]()
    @Published var showLocation = true
    init(){
        self.rallys = DataService.getLocalData()
    }
}
