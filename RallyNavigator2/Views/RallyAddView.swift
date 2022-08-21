//
//  RallyAddView.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 21/08/2022.
//

import SwiftUI

struct RallyAddView: View {
    @State var inputText = ""
    init(){
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        VStack(alignment:.leading){
            Text("New Rally")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            
            ZStack {
                TextEditor(text: $inputText)
                    .padding(10)
                    .font(.system(size: 25, weight: .heavy, design: .monospaced))
                    .disableAutocorrection(true)
                    .autocapitalization(.allCharacters)
                    
                    .lineSpacing(30)
                    .background(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05))
                    .cornerRadius(30)
            }.padding()
        }
            
    }
}

struct RallyAddView_Previews: PreviewProvider {
    static var previews: some View {
        RallyAddView()
    }
}
