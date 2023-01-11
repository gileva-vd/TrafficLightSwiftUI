//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Валерия Гилева on 10.01.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity:Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
