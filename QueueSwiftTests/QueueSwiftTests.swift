//
//  QueueSwiftTests.swift
//  QueueSwiftTests
//
//  Created by Никита Гуляев on 19.07.2024.
//

import XCTest
@testable import CustomDataTypesSwift

final class QueueSwiftTests: XCTestCase {
    
    func testIntQueue() {
        let intQueue = Queue<Int>()
        XCTAssertTrue(intQueue.isEmpty)
        
        intQueue.enqueue(1)
        XCTAssertFalse(intQueue.isEmpty)
        XCTAssertEqual(intQueue.count, 1)
        XCTAssertEqual(intQueue.peek(), 1)
        
        intQueue.enqueue(2)
        XCTAssertEqual(intQueue.count, 2)
        XCTAssertEqual(intQueue.peek(), 1)
        
        XCTAssertEqual(intQueue.dequeue(), 1)
        XCTAssertEqual(intQueue.count, 1)
        XCTAssertEqual(intQueue.dequeue(), 2)
        XCTAssertTrue(intQueue.isEmpty)
    }
    
    func testStringQueue() {
        let stringQueue = Queue<String>()
        XCTAssertTrue(stringQueue.isEmpty)
        
        stringQueue.enqueue("Hello")
        XCTAssertFalse(stringQueue.isEmpty)
        XCTAssertEqual(stringQueue.count, 1)
        XCTAssertEqual(stringQueue.peek(), "Hello")
        
        stringQueue.enqueue("World")
        XCTAssertEqual(stringQueue.count, 2)
        XCTAssertEqual(stringQueue.peek(), "Hello")
        
        XCTAssertEqual(stringQueue.dequeue(), "Hello")
        XCTAssertEqual(stringQueue.count, 1)
        XCTAssertEqual(stringQueue.dequeue(), "World")
        XCTAssertTrue(stringQueue.isEmpty)
    }
    
    func testCustomTypeQueue() {
        struct CustomType: Equatable {
            let id: Int
            let name: String
        }
        
        let customQueue = Queue<CustomType>()
        XCTAssertTrue(customQueue.isEmpty)
        
        let item1 = CustomType(id: 1, name: "Item1")
        let item2 = CustomType(id: 2, name: "Item2")
        
        customQueue.enqueue(item1)
        XCTAssertFalse(customQueue.isEmpty)
        XCTAssertEqual(customQueue.count, 1)
        XCTAssertEqual(customQueue.peek(), item1)
        
        customQueue.enqueue(item2)
        XCTAssertEqual(customQueue.count, 2)
        XCTAssertEqual(customQueue.peek(), item1)
        
        XCTAssertEqual(customQueue.dequeue(), item1)
        XCTAssertEqual(customQueue.count, 1)
        XCTAssertEqual(customQueue.dequeue(), item2)
        XCTAssertTrue(customQueue.isEmpty)
    }
}
