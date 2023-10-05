//
//  NavExamplesApp.swift
//  NavExamples
//
//  Created by Иван Марин on 05.10.2023.
//

import SwiftUI

@main
struct NavExamplesApp: App {
    
    enum Tab: Hashable {
        case tab1
        case tab2
    }
    
    @State var selectdTab: Tab = .tab2
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectdTab) {
                ContentView()
                    .tabItem { Image(systemName: "mug"); Text("Tab01") }
                    .badge(4)
                    .tag(Tab.tab1)
                SecondContentView()
                    .tabItem { Image(systemName: "person"); Text("Tab02") }
                    .tag(Tab.tab2)
            }
        }
    }
}
