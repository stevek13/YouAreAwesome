//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Steve on 8/19/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("I am a developer!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Text("Stay Hungry. Stay Foolish.").fontWeight(.bold).font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
