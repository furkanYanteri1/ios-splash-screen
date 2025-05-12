//
//  SplashScreenView.swift
//  ios-splash
//
//  Created by Furkan Yanteri on 12.05.2025.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive:Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        } else{
            VStack{
                Image("mascot")
                Text("Yagmur Solutions")
                    .foregroundStyle(.black)
                    .font(.system(size: 20))
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
