//
//  GenericsBootcamp.swift
//  SwiftulLearningAdvancedLearnin
//
//  Created by Mustafa Girgin on 26.03.2023.
//

import SwiftUI



struct StringModel {
    
    let info : String?
    
    func removeInfo() -> StringModel {
        StringModel(info: nil)
    }
}


struct GenericModel<T> {
    let info: T?
    
    func removeInfo() -> GenericModel {
        GenericModel(info: nil)
    }
}


struct GenericView<T:View>: View {
    
    let content : T
    let title : String
    
    var body: some View {
        VStack {
            Text(title)
            content
        }
    }
}


class GenericsViewModel : ObservableObject {
    
    @Published var stringModel = StringModel(info: "Hello, world")
    @Published var genericStringModel = GenericModel(info: "Hello, world")
    @Published var genericBoolModel = GenericModel(info: true)
    
    func removeData() {
        stringModel = stringModel.removeInfo()
    }

    
}

struct GenericsBootcamp: View {
    
    @StateObject private var vm = GenericsViewModel()
    
    var body: some View {
        VStack {
            Text(vm.genericStringModel.info ?? "")
            Text(vm.genericBoolModel.info?.description ?? "")
                
        }
    }
}

struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}
