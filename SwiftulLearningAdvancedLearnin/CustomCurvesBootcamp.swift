//
//  CustomCurvesBootcamp.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 21.03.2023.
//

import SwiftUI

struct CustomCurvesBootcamp: View {
    var body: some View {
        
        
        
        WaterShape()
            
            .fill(LinearGradient(colors: [.blue, .blue.opacity(0.4)], startPoint: .bottomLeading, endPoint: .bottomTrailing))
            .frame(width: 400, height: 700)
            .offset(y: 70)
            
            .ignoresSafeArea()
            
    }
}

struct CustomCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurvesBootcamp()
    }
}

/// PACMAN
struct ArcSample : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 2 ,
                startAngle: Angle(degrees: 20),
                endAngle: Angle(degrees: -20),
                clockwise: false)
        }
    }
}


/// upside-down mushroom
struct ShapeWithArc : Shape {
    func path(in rect: CGRect) -> Path {
        Path {path in
            
            // top left
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            
            //  top right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
            //  mid right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            
            
            // bottom arc
            path.addArc(center:CGPoint(x: rect.midX, y: rect.midY) , radius: rect.height / 2 + 30, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: -180), clockwise: false)
            
            //  bottom
            // path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            
            //  mid left
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            
        }
    }
}


struct QuadSample : Shape {
    func path(in rect: CGRect) -> Path {
        Path {path in
            path.move(to: .zero)
            path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY), control: CGPoint(x: rect.midX + 100, y: rect.midY))
            
        }
    }
}


struct WaterShape : Shape {
    func path(in rect: CGRect) -> Path {
        Path {path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            
            path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.midY), control: CGPoint(x: rect.width * 0.25, y: rect.height * 0.40))
            
            path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.midY), control: CGPoint(x: rect.width * 0.75, y: rect.height * 0.60))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            
        }
    }
}
