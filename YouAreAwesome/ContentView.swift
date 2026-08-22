//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 8/19/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "Stay Hungry. Stay Foolish!"
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            HStack {
                Button {
                    message = "You're Awesome!"
                } label: {
                    Text("Awesome!")
                }
                
                Button {
                    message = "You're Great!"
                } label: {
                    Text("Great!")
                }
            }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(Color.orange)
            
            
//            Text("Stay Hungry. Stay Foolish.").fontWeight(.bold).font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
