//
//  ViewBuilderBootcamp.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 26.03.2023.
//

import SwiftUI


struct HeaderViewGeneric<Content: View> : View {
    
    let title: String
    let content : Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            content
            
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
                
        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}


struct CustomHStack<Content:View> : View {
    
    let content : Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
        }
    }
}

struct ViewBuilderBootcamp: View {
    var body: some View {
        VStack {
            HeaderViewGeneric(title: "Selam") {
                VStack {
                    Text("Naber ")
                    Image(systemName: "heart.fill")
                }
            }
            
            CustomHStack {
                Text("Hi")
                Text("Hi")
                Text("Hi")
            }
            
            
            Spacer()
            
        }
    }
}

struct ViewBuilderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalViewBuilder(type: .two)
    }
}


struct LocalViewBuilder: View {
    
    enum ViewType {case one, two, three }
    
    let type : ViewType
    var body: some View {
        
        VStack {headerSection}
    }
    
    @ViewBuilder private var headerSection : some View {
        switch type {
        case .one:
            viewOne
        case .two:
            viewTwo
        case .three:
            viewThree
        }
    }
    
    private var viewOne : some View {
        Text("One")
    }
    
    private var viewTwo : some View {
        VStack {
            Text("Two")
            Image(systemName: "heart.fill")
        }
    }
    private var viewThree : some View {
        Image(systemName: "heart.fill")
    }
}
