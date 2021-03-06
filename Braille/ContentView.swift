//
//  ContentView.swift
//  Braille
//
//  Created by Eric de Quartel on 24/01/2022.
//

import SwiftUI


struct ContentView: View {

    
    
    var body: some View {
        TabView {
            SettingsView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Instellingen")
                }
            InformationView()
                .tabItem {
                    Image(systemName: "text.bubble")
                    Text("Informatie")
                }
            PlaygroundView()
                .tabItem {
                    Image(systemName: "circle.square")
                    Text("Speelveld")
                }
//            SearchWordView()
//                .tabItem {
//                    Image(systemName: "circle.square")
//                    Text("Search Word")
//                }
            AudioView()
                .tabItem {
                    Image(systemName: "play")
                    Text("Audio")
                }
        }
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


