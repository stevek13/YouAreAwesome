//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 9/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("I am a Deveoper!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
