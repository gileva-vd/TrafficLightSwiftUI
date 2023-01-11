//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Валерия Гилева on 10.01.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
        }
        .frame(width: 200, height: 50)
        .background(Color(.gray))
        .cornerRadius(10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
