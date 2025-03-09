//
//  ContentView.swift
//  2025-SwiftUI-Lesson 1
//
//  Created by Stanley Sim on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "Hello World"
    @State private var icon = "globe"
    @State private var labelColor: Color = .red
    @State private var profile = false
    @State private var name = "Stanley"
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Hello \(name)").font(.title)
                .foregroundColor(profile ? .black : .white)
            
            Spacer()
            
            Label(message, systemImage: icon)
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: 75)
                .background(labelColor)
                .cornerRadius(5)
            
            Spacer()
            
            Button("Change Text"){
                if message == "Hello World" {
                    message = "App Development"
                    icon = "app"
                    labelColor = .blue
                } else if message == "App Development" {
                    message = "SST Inc"
                    icon = "graduationcap"
                    labelColor = .green
                } else {
                    message = "Hello World"
                    icon = "globe"
                    labelColor = .red

                }
                
            }
            .font(.title)
            
            Picker("Profile", selection: $profile) {
                Text("Off").tag(false)
                Text("On").tag(true)
            }.pickerStyle(.segmented)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
