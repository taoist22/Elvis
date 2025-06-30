//
//  ContentView.swift
//  Elvis
//
//  Created by CT Reatherford on 6/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .frame(width: 300, height: 300)
                
                
            Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                        
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
