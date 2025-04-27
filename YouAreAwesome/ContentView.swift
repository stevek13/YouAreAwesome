//
//  ContentView.swift
//  YouAreAwesome
// https://www.youtube.com/watch?v=z1sJWq3wGRY&list=PL9VJ9OpT-IPSM6dFSwQCIl409gNBsqKTe&index=4
//
//  Created by Steve on 4/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are Awesome!")
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
