//
//  CustomShapesBootcamp.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 21.03.2023.
//

import SwiftUI


struct Triangle : Shape {
    func path(in rect: CGRect) -> Path {
        Path {path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            
        }
    }
    
    
}


struct Diamond : Shape {
    
    
    
    func path(in rect: CGRect) -> Path {
        Path {path in
            path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: (rect.maxX), y: (rect.minY + 50)))
            path.addLine(to: CGPoint(x: (rect.maxX - 50), y: (rect.minY )))
            path.addLine(to: CGPoint(x: (rect.minX + 50), y: (rect.minY )))
            path.addLine(to: CGPoint(x: (rect.minX), y: (rect.minY + 50)))
            
//            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
            
        }
    }
    
    
}

struct CustomShapesBootcamp: View {
    var body: some View {
        ZStack {
            Diamond().frame(width: 300, height: 300)
        }
    }
}

struct CustomShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapesBootcamp()
    }
}
