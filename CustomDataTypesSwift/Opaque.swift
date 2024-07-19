//
//  Opaque.swift
//  CustomDataTypesSwift
//
//  Created by Никита Гуляев on 19.07.2024.
//

import Foundation

struct Items: Container {
    typealias Item = String
    private var itemsArray: [String] = []
    
    mutating func append(_ item: String) {
        itemsArray.append(item)
    }
    
    mutating func remove(atIndex: Int) -> String? {
        itemsArray.remove(at: atIndex)
    }
    
    subscript(i: Int) -> String {
        itemsArray[i]
    }
    
    var count: Int {
        itemsArray.count
    }
    
    init(itemsArray: [String]) {
        self.itemsArray = itemsArray
    }

}

func makeOpaqueContainer() -> some Container {
    return Items(itemsArray: ["iPhone", "android"])
}
