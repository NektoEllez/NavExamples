//
//  ContentView.swift
//  NavExamples
//
//  Created by Иван Марин on 05.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    PushView()
                } label: {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
            }
            .padding()
            
        }
        .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
