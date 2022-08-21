//
//  DataService.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import Foundation

class DataService{
    static func getLocalData() -> [Rally]{
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else{
            return [Rally]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let rallyData = try decoder.decode([Rally].self, from: data)
                for r in rallyData{
                    r.id = UUID()
                }
                return rallyData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Rally]()
    }
}
