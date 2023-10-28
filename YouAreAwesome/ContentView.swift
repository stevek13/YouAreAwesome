//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 10/25/23.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    //    @State private var messageString = "When the Genius Bar needs help, they call you!"
    @State private var messageString = ""
    @State private var imageName = "image0"
    @State private var lastImageNumber: Int = -1
    @State private var lastMessageNumber:Int = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!

    
    var body: some View {
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .bold()
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(25.0)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? That's You!",
                                "You Are Fantastic!",
                                "You Make Me Smile",
                                "When the Genius Bar Needs Help, They Call You!"]
                
                let messageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: messages.count - 1)
                lastMessageNumber = messageNumber
                messageString = messages[messageNumber]
              
                let imageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 9)
                lastImageNumber = imageNumber
                imageName = "image\(imageNumber)"

                let soundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: 5)
                let soundName = "sound\(soundNumber)"
                lastSoundNumber = soundNumber
                playSound(soundName: soundName)
                
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer.")
        }
    }
    func nonRepeatingRandom(lastNumber:Int, upperBounds:Int) -> Int{
        var randomInt: Int
        repeat {
            randomInt = Int.random(in: 0...upperBounds)
        } while randomInt == lastNumber
        return randomInt

    }
}


#Preview {
    ContentView()
}
