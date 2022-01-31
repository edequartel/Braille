//
//  ContentView.swift
//  Braille
//
//  Created by Eric de Quartel on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
        HStack(){
            Text("Top")
            Text("Left")
            Text("Right")
        }
        Spacer()
        HStack(spacing: 10) {
            VStack(){
            let name="Eric"
            Text("Hello, Braille!")
            Text(name)
            Spacer()
            Text("""
            braille een programma
            om braille te leren
            op je iphone,
            zet eerst voiceover aan
            en verbind de leesregel
            via bluetooth
            """)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("World")
            Text("Africa")
            }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
