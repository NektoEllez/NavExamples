//
//  SheetView.swift
//  NavExamples
//
//  Created by Иван Марин on 05.10.2023.
//

import SwiftUI

@available(iOS 15.0, *)
struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    SheetView()
}
