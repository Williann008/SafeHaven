//
//  viewD.swift
//  Women's safty app
//
//  Created by Anna Williams on 4/10/24.
//

//this page is meant to have a button to alert authorities and play a loud sound
//meant for emergencies only
//does not currently alert authorities 

import SwiftUI
import AVKit

class SoundManager: ObservableObject {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    //function that plays sound
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "load-alarm-sound", withExtension: ".mp3") else {return}
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}

//audioPlayer = AVAudioPlayer(contentsOfURL:

struct viewD: View {
    
    var soundManager = SoundManager()
    
    var body: some View {
        
        ZStack {
            
            Image("soft.png")
                .resizable()
                .ignoresSafeArea()
            
            

            VStack {
                
                //warning text
                Text("Pressing this button alerts authorities to your location and plays a loud sound")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                
                //this button plays a loud sound
                //does not currently alert authorities but would if this was meant to be on the app store
                Button {
                    SoundManager.instance.playSound()
                } label: {
                    Image(systemName: "speaker.wave.3.fill")
                }
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
            }
        }
        
    }
}

#Preview {
    viewD()
}
