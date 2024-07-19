//
//  ContaiterProtocol.swift
//  CustomDataTypesSwift
//
//  Created by Никита Гуляев on 19.07.2024.
//

import Foundation

protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    mutating func remove(atIndex: Int) -> Item?
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}
