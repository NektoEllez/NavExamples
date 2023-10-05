//
//  SecondContentView.swift
//  NavExamples
//
//  Created by Иван Марин on 05.10.2023.
//

import SwiftUI

struct SecondContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 25) {
                NavigationLink(value: User(firstName: "Bill")) {
                    Image(systemName: "chevron.right")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, Bill")
                }
                
                NavigationLink(value: User(firstName: "Jannie")) {
                    Image(systemName: "chevron.right")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, Jannie")
                }
            }
            .colorMultiply(.black)
            .navigationTitle("Users")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: User.self) { user in
                PushView(user: user)
            }
        }
        .accentColor(.white)
    }
}


#Preview {
    SecondContentView()
}

struct User: Hashable {
    var firstName:  String  = "Foo"
    var lastName:   String  = "Bar"
}
