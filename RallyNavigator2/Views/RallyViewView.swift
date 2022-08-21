//
//  RallyViewView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 21/08/2022.
//

import SwiftUI

struct RallyViewView: View {
    var rally: Rally
    var body: some View {
        ScrollView{
            Text(rally.note)
                .underline()
                .padding(10)
                .font(.system(size: 20, weight: .heavy, design: .monospaced))
                .disableAutocorrection(true)
                .autocapitalization(.allCharacters)
                .lineSpacing(30)
                .background(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05))
                .cornerRadius(30)
                .padding(.top, 40)
                
            
        }.navigationBarTitle(rally.name)
    }
}

struct RallyViewView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RallyModel()
        RallyViewView(rally: model.rallys[1])
    }
}
