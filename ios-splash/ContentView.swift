//
//  ContentView.swift
//  ios-splash
//
//  Created by Furkan Yanteri on 12.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Text("Home Screen of Yagmur Solutions")
                .foregroundStyle(.gray)
                .font(.system(size: 25))
        }
    }
}

#Preview {
    ContentView()
}
