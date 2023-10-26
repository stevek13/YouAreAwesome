//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    
    //    @State private var messageString = "When the Genius Bar needs help, they call you!"
    @State private var messageString = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .bold()
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            
            Spacer()
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great"
                
                if messageString == message1 {
                    messageString = message2
                } else {
                    messageString = message1
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
