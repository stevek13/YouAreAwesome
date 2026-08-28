//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 8/19/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
//    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            Spacer()
         
            Button ("Press Me")  {
                let messages = ["You are Awesome!",
                                            "You are Great!",
                                            "You are Fantstic!",
                                            "Fabulous? That's You!",
                                            "You Make Me Smile!",
                                            "When the Genius Bar Needs Help, They Call You!"]

                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                message = messages[messageNumber]
                imageNumber = Int.random(in: 0...9)
                imageName = "image\(imageNumber)"
 //              print(imageName)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        
            
        }
    
        .padding()
    }
}

#Preview {
    ContentView()
}
