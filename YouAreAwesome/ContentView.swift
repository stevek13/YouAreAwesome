//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 9/6/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
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

            Image(imageName)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            Spacer()
            Button("Show Message") {
                
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous, That's You!",
                                "You Are Fantastic",
                                "You Swifty!",
                                "You make me smile",
                                "When The Genuis Bar Needs Help, The Call You!"]
                
                imageName = "image\(imageNumber)"

                message = (messages[messageNumber])
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                //TODO: Update the imageName variable
                imageNumber += 1
                if imageNumber > 9  {
                    imageNumber = 0
                }
                
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
