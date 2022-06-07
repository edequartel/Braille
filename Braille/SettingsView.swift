//
//  SettingsView.swift
//  Braille
//
//  Created by Eric de Quartel on 14/03/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var countryCode = 0
    
    @State private var methodIdx = 0 //UserDefaults.standard.integer(forKey: "method")
    @State private var methods: [Method] = []
    
    @State private var lessonIdx = 0
    @State private var lessons: [Lesson] = []

    @State private var lettersCnt=1
    @State private var wordCnt=3
    
    let action = ["mengsel","luister-schrijf","lees-schrijf","lees-luister-schrijf"]
    @State private var actionIdx=0
    
    
    let methode = Method(id: 0, name: "loading...", developer: "", information: "", letters: "", comments: "", lesson: [])
    var lessen = Lesson(id: 0, name: "loading...", letters: "", antiletters: "", words: "", antiwords: "", sentence: ["String"], comments: "", information: "", voice: ["String"], audio: ["String"])
    
    var method: Method {
        guard methods.count>0 else {
            return methode
        }
        return methods[methodIdx]
    }
    
    var lesson: Lesson {
        guard lessons.count>0 else {
            return lessen
        }
        return lessons[lessonIdx]
    }
    
    var body: some View {
        
        NavigationView {
            Form {
                Text("")
//                Section(header: Text("Methode")) {
//                    VStack(alignment: .leading){
//                        Button("\(methodIdx+1) \(method.name)") {
//                            methodIdx += 1
//                            //UserDefaults.standard.set(self.methodIdx, forKey: "method")
//                            lessonIdx = 0
//                            if methodIdx==methods.count {
//                                methodIdx = 0
//                                //UserDefaults.standard.set(self.methodIdx, forKey: "method")
//                            }
//                            lessons = methods[methodIdx].lesson
//                        }
//                    }
//                    .padding(10)
//                    Text(method.information)
                    
//                Section{
//                    Button("les \(lessonIdx+1): \(lesson.name)") {
//                        lessonIdx += 1
//                        if lessonIdx==lessons.count {
//                            lessonIdx = 0
//                        }
//                    }
                }
                //
//                Section{
//                    Button("Letters \(lettersCnt)") {
//                        lettersCnt += 1
//                        if lettersCnt > 10 {
//                            lettersCnt = 1
//                        }
//                    }
//                    Button("Woorden \(wordCnt)") {
//                        wordCnt += 1
//                        if  wordCnt > 10 {
//                            wordCnt = 1
//                        }
//
//                    }
//                }
                
//                Section(header: Text("Oefening")) {
//                    Button("Oefening \(actionIdx+1) \(action[actionIdx])") {
//                        actionIdx += 1
//                        if  actionIdx >= action.count {
//                            actionIdx = 0
//                        }
//
//                    }
//                }
//
//            }
//            .navigationTitle("iBraille - Bartiméus Onderwijs")
//            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear(perform: readFile)
    }
    
    private func readFile() {
        if let url = Bundle.main.url(forResource: "methods", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            if let jsonData = try? JSONDecoder().decode(JSONdata.self, from: data) {
                methods=jsonData.country[countryCode].method
                lessons = methods[methodIdx].lesson
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


//    @State var tapCount = 0
//    @State var lettersCount = 1
//    @State var woordenCount = 1
//    @State var methodeCount = 0
//    @State var methodCount = 0
//    @State var tekst: String = ""
//    @FocusState private var isFocused: Bool

//    @State private var lijst = ["abl","abk-k","abl-k-h", "abcl-k-h"]
//    var mpoplijst = ["abl","abk-k","abl-k-h", "abcl-k-h"]
//    var marelijst = ["abkl","cgop"]
//

//let spraak = ["Kind","Volwassen","Vorm","Punten"]
//@State var speechCount = 0
//
//let oefeningen = ["mengsel","luister-schrijf","lees-schrijf","lees-luister-schrijf"]
//@State private var selectedOefening = "zoek"


//
//

//
//                    Button("Woorden \(woordenCount)") {
//                        woordenCount += 1
//                        if  woordenCount > 10 {
//                            woordenCount = 1
//                        }
//                    }
//                } header: {
//                    Text("Instellingen")
//                }

//                Section {
//                    Button("Speel \(selectedOefening)") {
//                    }
//                }

//                    Picker("Method", selection: $selectedMethode) {
//                        ForEach(methods, id: \.self.name) {
//                            Text($0.name)
//                        }
//
//                    }

//                    ForEach(methods, id: \.self.id) {
//                        Text($0.name)
//                    }

//Section {
//    List(methods) { method in
//        VStack() {
//            Button(method.name) {
//            }
//            Text(method.information)
//            Spacer(minLength: 5)
//        }
//    }
//}
