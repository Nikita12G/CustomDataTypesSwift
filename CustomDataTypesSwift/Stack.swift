//
//  Stack.swift
//  CustomDataTypesSwift
//
//  Created by Никита Гуляев on 19.07.2024.
//

import Foundation

class Stack<T> { // Type LIFO
    private var array: [T] = []
    
    // Add element to top of stack O(1)
    func push(_ item: T) {
        array.append(item)
    }
    
    // Remove last element of stack O(1)
    func pop() -> T? {
        array.popLast()
    }
    
    // Return last element of stack O(1)
    func peek() -> T?{
        array.last
    }
    
    // Value about whether the stack is empty or not 0(1)
    var isEmpty: Bool {
        array.isEmpty
    }
    
    // Number of elements 0(1)
    var count: Int {
        array.count
    }
}


struct StackStruct<T>: Container {
    typealias Item = T
    fileprivate var array = [T]()
    
    mutating func append(_ item: T) {
        array.append(item)
    }
    
    mutating func remove(atIndex: Int) -> T? {
        array.remove(at: atIndex)
    }
    
    subscript(i: Int) -> T? {
        array[i]
    }
    
    mutating func push(_ item: T) {
        array.append(item)
    }
    
    mutating func pop() -> T? {
        array.popLast()
    }
    
    var peek: T? {
        array.last
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count: Int {
        array.count
    }
}
