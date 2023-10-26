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
                
                HStack() {
                    Button("Awesome") {
                        messageString = "You are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    
                    Button("Great") {
                        messageString = "Your are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
                //            .border(.purple, width: 5)
                .padding()
                
           
        }
        
    }
}


#Preview {
    ContentView()
}
