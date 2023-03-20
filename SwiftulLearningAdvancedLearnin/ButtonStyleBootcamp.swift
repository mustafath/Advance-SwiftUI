//
//  ButtonStyleBootcamp.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 20.03.2023.
//

import SwiftUI


struct PressableButtonStyle : ButtonStyle {
    
    let scaledAmount : CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaledAmount : 1)
//            .brightness(configuration.isPressed ? 0.05 : 0)
//            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}

extension View {
    func withPressableStyle(scaledAmount: CGFloat = 0.9) -> some View {
        self.buttonStyle(PressableButtonStyle(scaledAmount: scaledAmount))
    }
}

struct ButtonStyleBootcamp: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Click Me")
                .withDefaultButtonFormatting(backgroundColor: .red)
        }.padding(40)
            .withPressableStyle(scaledAmount: 0.7)
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
