//
//  StackSwiftTests.swift
//  StackSwiftTests
//
//  Created by Никита Гуляев on 19.07.2024.
//

import XCTest
@testable import CustomDataTypesSwift

final class StackSwiftTests: XCTestCase {

    func testIntInStack() {
        let intStack = Stack<Int>()
        XCTAssertTrue(intStack.isEmpty)
        
        intStack.push(1)
        XCTAssertFalse(intStack.isEmpty)
        XCTAssertEqual(intStack.count, 1)
        XCTAssertEqual(intStack.peek(), 1)
        
        intStack.push(2)
        XCTAssertEqual(intStack.count, 2)
        XCTAssertEqual(intStack.peek(), 2)
        
        XCTAssertEqual(intStack.pop(), 2)
        XCTAssertEqual(intStack.count, 1)
        XCTAssertEqual(intStack.pop(), 1)
        XCTAssertTrue(intStack.isEmpty)
    }
    
    func testStringStack() {
        let stringStack = Stack<String>()
        XCTAssertTrue(stringStack.isEmpty)
        
        stringStack.push("Hallow")
        XCTAssertFalse(stringStack.isEmpty)
        XCTAssertEqual(stringStack.count, 1)
        XCTAssertEqual(stringStack.peek(), "Hallow")
        
        stringStack.push("World")
        XCTAssertEqual(stringStack.count, 2)
        XCTAssertEqual(stringStack.peek(), "World")
        
        XCTAssertEqual(stringStack.pop(), "World")
        XCTAssertEqual(stringStack.count, 1)
        XCTAssertEqual(stringStack.pop(), "Hallow")
        XCTAssertTrue(stringStack.isEmpty)
    }
    
    func testCustomTypeStack() {
        struct CustomType: Equatable {
            let id: Int
        }
        
        var customStack = Stack<CustomType>()
        XCTAssertTrue(customStack.isEmpty)
        
        let item1 = CustomType(id: 1)
        let item2 = CustomType(id: 2)
        
        customStack.push(item1)
        XCTAssertFalse(customStack.isEmpty)
        XCTAssertEqual(customStack.count, 1)
        XCTAssertEqual(customStack.peek(), item1)
        
        customStack.push(item2)
        XCTAssertEqual(customStack.count, 2)
        XCTAssertEqual(customStack.peek(), item2)
        
        XCTAssertEqual(customStack.pop(), item2)
        XCTAssertEqual(customStack.count, 1)
        XCTAssertEqual(customStack.pop(), item1)
        XCTAssertTrue(customStack.isEmpty)
    }
}
