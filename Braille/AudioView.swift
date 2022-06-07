//
//  AudioView.swift
//  Braille
//
//  Created by Eric de Quartel on 14/03/2022.
//

import SwiftUI

import AVFoundation
var player: AVAudioPlayer!

struct AudioView: View {
    var body: some View {
        
        NavigationView{
            Form {
                Section {
                    Button("Play") {
                        playSound()
                    }
                    Button("Stop") {
                        stopSound()
                        
                    }
                } header: {
                    Text("Speler")
                }
                    
                Section {
                    Button("TekstNaarSpraak NL") {
                        let utterance = AVSpeechUtterance(string: "Het is lente. De bloemetjes bloeien.")
                        utterance.voice = AVSpeechSynthesisVoice(language: "nl")
                        utterance.rate = 0.5
                        
                        let synthesizer = AVSpeechSynthesizer()
                        synthesizer.speak(utterance)
                    }
                }header: {
                    Text("Tekst naar spraak")
                }
            }
            .navigationTitle("Audio")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    //
    func playSound() {
        let url = Bundle.main.url(forResource: "sample2", withExtension: "mp3")
        //Do nothing if this url is empty
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("\(error)")
        }
    }
    func stopSound() { //bugs if not playing
        player?.stop()
    }
    
    
    
    //
}

struct AudioView_Previews: PreviewProvider {
    static var previews: some View {
        AudioView()
    }
}
