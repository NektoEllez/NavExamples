//
//  PushView.swift
//  NavExamples
//
//  Created by Иван Марин on 05.10.2023.
//

import SwiftUI

struct PushView: View {
    
    var user = User()
    
    @State var isPresented = false
    
    var body: some View {
            HStack(alignment: .center, spacing: 20) {
                Text(user.firstName)
                Text(user.lastName)
                Button("Present") {
                    isPresented = true
                }.colorMultiply(.green)
            }
            .font(.system(size: 22, weight: .bold))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .sheet(isPresented: $isPresented) {
                SheetView()
            }
    }
}

#Preview {
    PushView()
}
