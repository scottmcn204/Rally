//
//  RallyListView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import SwiftUI

struct RallyListView: View {
    @EnvironmentObject var model: RallyModel
    var body: some View {
        NavigationView{
            VStack(alignment: .leading ) {
                Text("Saved Rallys")
                    .bold()
                    .padding(.leading)
                    .padding(.top, 40)
                    .font(.largeTitle)
                GeometryReader{ geometry in
                    TabView{
                        ForEach(0..<model.rallys.count){rally in
                            NavigationLink(destination: RallyViewView(rally: model.rallys[rally]), label: {
                                RallyCardView(rally: model.rallys[rally])
                                    .position(x: geometry.size.width/2, y: geometry.size.height/2 - 50)
                            })
                                
                            
                        }
                    }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                }
            }.navigationBarHidden(true)
        }
    }
}

struct RallyListView_Previews: PreviewProvider {
    static var previews: some View {
        RallyListView().environmentObject(RallyModel())
    }
}
