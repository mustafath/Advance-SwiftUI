//
//  MatchedGeometryEffect.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 21.03.2023.
//

import SwiftUI

struct MatchedGeometryEffect: View {
    
    @State private var isClicked : Bool = false
    @Namespace private var namespace
    
    var body: some View {
        VStack {
            
            if !isClicked {
                Circle()
                    .matchedGeometryEffect(id: "Rectangle", in: namespace)
                    .frame(width: 100, height: 100)
                    
                    
            }
            

            Spacer()
            
            if isClicked {
                Circle()
                    .matchedGeometryEffect(id: "Rectangle", in: namespace)
                    .frame(width: 200, height: 200)
                    
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            .onTapGesture {
                withAnimation(.easeInOut) {
                    isClicked.toggle()
                }
            }
    }
}

struct MatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectExample2()
    }
}


struct MatchedGeometryEffectExample2 : View {
    
    let categories : [String] = ["Home", "Popular", "Saved"]
    @State private var selected : String = ""
    @Namespace private var namespace2
    
    var body: some View {
        HStack {
            
            ForEach(categories, id: \.self) { category in
                ZStack {
                    
                    if selected == category {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red.opacity(0.5))
                            .matchedGeometryEffect(id: "category-background", in: namespace2)
                            .frame(width: 60, height: 2)
                            .offset(y: 15)
                    }
                    
                    Text(category)
                        .bold()
                        .scaleEffect(selected == category ? 1.1 : 1.0)
                        .foregroundColor(selected == category ? .red : .black)
                }.frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selected = category
                        }
                    }
            }
            
        }.padding()
    }
}
