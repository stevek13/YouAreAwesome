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
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button {
                message = "You're Awesome!"
            } label: {
                Text("Click Me!")
            }

//            Text("Stay Hungry. Stay Foolish.").fontWeight(.bold).font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
