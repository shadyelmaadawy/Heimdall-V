//
//  TestViews.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 27/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var x: String = "hello"
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

struct ContentView1: View {
    @State var x: String = "hello"

    var body: some View {
        VStack.init(content: {
            TextField("Hello", text: $x)
            Button.init(action: {print(x)}, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        })
    }
}

struct ContentView2: View {
    var body: some View {
        
        VStack {
            
            BaseButton.init(text: "Hello-World!;") {
                print("Hello-World!;")
            }
            
            BaseLabel.init(text: "Hello-World!;")
                .with(weight: .semiBoldItalic, textStyle: .body)
                .set(scheme: .label)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}

