//
//  MapView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate: coordinate)
            }
    }

    private func setRegion(coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion( center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RallyModel()
        MapView(coordinate: model.rallys[0].locationCoordinate)
    }
}
