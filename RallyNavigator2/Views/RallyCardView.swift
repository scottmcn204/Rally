//
//  RallyCardView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import SwiftUI
import MapKit

struct RallyCardView: View {
    @EnvironmentObject var model: RallyModel
    var rally:Rally
    var body: some View {

        GeometryReader{ geometry in
            ZStack {
                if model.showLocation{
                    MapView(coordinate: rally.locationCoordinate)
                }
                Rectangle()
                    .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 0.5))
                VStack(alignment: .leading){
                    Text(rally.name).bold().font(.largeTitle)
                    Text(rally.date).bold().font(.title2)
                }
                .foregroundColor(.white)
            }
            //
            .cornerRadius(20)
            .position(x: geometry.size.width/2, y: geometry.size.height/2)
            .frame(width: geometry.size.width - 40, height: geometry.size.height - 200)
        }
    }
}

struct RallyCardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RallyModel()
        RallyCardView(rally: model.rallys[1]).environmentObject(RallyModel())
    }
}
