//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Валерия Гилева on 10.01.2023.
//

import SwiftUI


struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    private var colorCircle: some View {
        VStack {
            ColorCircleView(color: .red, opacity: currentLight == .red ? 1: 0.5)
            ColorCircleView(color: .yellow, opacity: currentLight == .yellow ? 1: 0.5)
            ColorCircleView(color: .green, opacity: currentLight == .green ? 1: 0.5)
        }
    }
    
    var body: some View {
        ZStack{
            Color(red: 0.4, green: 0.254, blue: 0.7)
                .ignoresSafeArea()
            VStack {
                colorCircle
                .padding()
                Spacer()
                
                ButtonView(title: buttonTitle){
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    
                    changeСolor()
                }
            }.padding()
        }
    }
    
    private func changeСolor () {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

enum CurrentLight {
    case red, yellow, green
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
