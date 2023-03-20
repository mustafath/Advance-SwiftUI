//
//  ViewModifierBootcamp.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 20.03.2023.
//

import SwiftUI


struct DefaultButtonViewModifier : ViewModifier {
    
    let backgroundColor : Color
    
    func body(content: Content) -> some View {
       return content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .withDefaultButtonFormatting(backgroundColor: Color.pink)
                .font(.headline)
                
                
        }.padding()
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
