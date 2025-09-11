//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 9/6/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = -1
    @State private var lastMessageNumber: Int = -1
    @State private var lastImageNumber: Int = -1
    @State private var soundNumber = -1
    @State private var lastSoundNumber: Int = -1
    @State private var audioPlayer: AVAudioPlayer!
    @State private var soundOn: Bool = true
    
    let numberOfImages = 10
    let numberOfSounds = 6
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(Color(.red))
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black, radius: 30)
                .animation(.default, value: imageName)
            Spacer()
            HStack {
                Text("Sound On:")
                Toggle("", isOn: $soundOn)
                    .labelsHidden()
                    .onChange(of: soundOn) { oldValue, newValue in
                        if audioPlayer != nil && audioPlayer.isPlaying{
                                audioPlayer.stop()
                        }
                    }
                Spacer()
                Button("Show Message") {
                    
                    let messages = ["You Are Awesome!",
                                    "You Are Great!",
                                    "Fabulous, That's You!",
                                    "You Are Fantastic!",
                                    "You Swifty!",
                                    "You make me smile!",
                                    "When The Genuis Bar Needs Help, They Call You!",
                                    "Gadzooks!  Good To See You!"]
                    
                    //TODO: Add nonRepeatingRandom func call here
                    lastMessageNumber = nonRepeatingRandomm(lastNumber: lastMessageNumber, upperBound: messages.count - 1)
                    message = messages[lastMessageNumber]
                    
                    //TODO: Update the imageName variable
                    lastImageNumber = nonRepeatingRandomm(lastNumber: lastImageNumber, upperBound: numberOfImages - 1)
                    imageName = "image\(lastImageNumber)"
                    
                    lastSoundNumber = nonRepeatingRandomm(lastNumber: lastSoundNumber, upperBound: numberOfSounds - 1)
                    if soundOn{
                        playSound(soundName: "sound\(lastSoundNumber)")
                    }
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
            }

        }
        .padding()
    }
    func nonRepeatingRandomm(lastNumber: Int, upperBound:Int) -> Int {
        var newNumber: Int
        repeat  {
            newNumber = Int.random(in: 0...upperBound)
        } while newNumber == lastNumber
        return newNumber
    }
    func playSound(soundName:String) {
        if audioPlayer != nil && audioPlayer.isPlaying{
            audioPlayer.stop()
        }
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.stop()
            audioPlayer.play()
        } catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
        }
    }
}

#Preview {
    ContentView()
}
