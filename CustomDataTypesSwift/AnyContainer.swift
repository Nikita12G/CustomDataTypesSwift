//
//  AnyContainer.swift
//  CustomDataTypesSwift
//
//  Created by Никита Гуляев on 19.07.2024.
//

import Foundation


private class AnyBox<Item>: Container {
    func append(_ item: Item) {
        assertionFailure("This method is abstract")
    }
    
    func remove(atIndex: Int) -> Item? {
        assertionFailure("This method is abstract")
        return nil
    }
    
    var count: Int {
        assertionFailure("This method is abstract")
        return 0
    }
    
    subscript(i: Int) -> Item? {
        assertionFailure("This method is abstract")
        return nil
    }
}

private class AnyContainer<Items: Container>: AnyBox<Items.Item> {
    private var container: Items
    
    init(_ container: Items) {
        self.container = container
    }
    
    override func append(_ item: Items.Item) {
        container.append(item)
    }
    
    override func remove(atIndex index: Int) -> Items.Item? {
        return container.remove(atIndex: index)
    }
    
    override var count: Int {
        return container.count
    }
    
    override subscript(i: Int) -> Items.Item? {
        return container[i]
    }
}
