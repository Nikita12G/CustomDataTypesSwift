//
//  Queue.swift
//  CustomDataTypesSwift
//
//  Created by Никита Гуляев on 19.07.2024.
//

import Foundation

class Queue<T>: Container {
    typealias Item = T
    private var array: [T] = []
    
    func append(_ item: T) {
        array.append(item)
    }
    
    func remove(atIndex: Int) -> T? {
        if isEmpty {
            return nil
        } else {
            return array.remove(at: atIndex)
        }
    }
    
    subscript(i: Int) -> T? {
        array[i]
    }
    // Add element to queue O(1)
    func enqueue(_ item: T) {
        array.append(item)
    }
    
    // Return first element in queue O(n)
    func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    // Return first element of queue O(1)
    func peek() -> T? {
        array.first
    }
    
    // Number of elements O(1)
    var count: Int {
        array.count
    }
    
    // Value about whether the stack is empty or not 0(1)
    var isEmpty: Bool {
        array.isEmpty
    }
}


struct QueueStruct<T> {
    private var array: [T] = []
    
    mutating func enqueue(_ item: T) {
        array.append(item)
    }
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek() -> T? {
        return array.first
    }
}
