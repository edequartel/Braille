//
//  PlaygroundView.swift
//  Braille
//
//  Created by Eric de Quartel on 14/03/2022.
//

import SwiftUI
import SwiftUIX

struct PlaygroundView: View {
    @State var text1 = ""
    @State var isEditing1 = true
    @State var text2 = ""
    @State var isEditing2 = false
    
    @State var x=0
    @State var y=0
    
    @State var tekst: String = ""

    
    var body: some View {
        
        NavigationView{
            Form {
                Section {
                    Text("ababbabbba")
                }
                Section {
                    TextField("Placeholder", text: .constant("This is text data"))
              
                }
                Section {
                    CocoaTextField("", text: $text1)
                    CocoaTextField("", text: $text2)
                }

            }
            .navigationTitle("Speelveld")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
    
    
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}


//
//var observer: NSKeyValueObservation?

//

//                observer = textField.observe(\.selectedTextRange) { textField, change in
//                            if let selectedRange = textField.selectedTextRange {
//
//                                let cursorPosition = textField.offset(from: textField.beginningOfDocument, to: selectedRange.start)
//
//                                print("\(cursorPosition)")
//                            }
//                        }
//


