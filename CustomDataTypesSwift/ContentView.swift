//
//  ContentView.swift
//  CustomDataTypesSwift
//
//  Created by Никита Гуляев on 19.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    func example() {
        // Example use AnyContainer with makeOpaqueContainer
        let opaqueContainer = makeOpaqueContainer() as? Items
        guard let opaqueContainer = opaqueContainer else { return }
        var anyContainer = AnyContainer(opaqueContainer)

        print(anyContainer.count) // 2
        print(anyContainer[0] ?? "nil") // "iPhone"
        anyContainer.append("Windows Phone")
        print(anyContainer.count) // 3
        print(anyContainer.remove(atIndex: 1) ?? "nil") // "android"
        print(anyContainer.count) // 2
        print(anyContainer[1] ?? "nil") // "Windows Phone"
    }
    
}

#Preview {
    ContentView()
}
