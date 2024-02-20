//
//  ContentView.swift
//  Heimdall-V
//
//  Created by Shady El-Maadawy on 19/02/2024.
//

import SwiftUI
import Heimdall_Kit

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            BaseButton.init(text: "Hello-World!;") {
                print("Hello-World!;")
            }
            
            BaseLabel.init(text: "Hello-World!;")
                .with(weight: .regular, textStyle: .body)
                .set(scheme: .label)
            BaseLabel.init(text: "Hello-World!;")
                .with(weight: .bold, textStyle: .body)
                .set(scheme: .label)
            BaseLabel.init(text: "Hello-World!;")
                .with(weight: .semiBold, textStyle: .body)
                .set(scheme: .label)
            BaseLabel.init(text: "Hello-World!;")
                .with(weight: .boldItalic, textStyle: .body)
                .set(scheme: .label)
            BaseLabel.init(text: "Hello-World!;")
                .with(weight: .semiBoldItalic, textStyle: .body)
                .set(scheme: .label)

            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

