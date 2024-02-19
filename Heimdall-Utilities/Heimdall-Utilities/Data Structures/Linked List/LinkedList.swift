//
//  LinkedList.swift
//  Heimdall-Utilities
//
//  Created by Shady El-Maadawy on 19/02/2024.
//

import Foundation

public struct LinkedList<V> {
    
    // MARK: - Properties
    
    public var head: Node<V>?
    public var tail: Node<V>?
    
    // MARK: - Initialization
    
    public init() {}
}

// MARK: - Operations

extension LinkedList {
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public mutating func push(with value: V) {
        
        let currentHead = self.head
        
        self.head = Node.init(
            value: value, next: currentHead
        )
        
        if(self.tail == nil) {
            self.tail = self.head
        }
    }
    
    public mutating func append(with value: V) {
        
        guard isEmpty == false else {
            self.push(with: value)
            return
        }
        
        let newNode = Node.init(value: value)
        self.tail!.next = newNode
        self.tail = newNode
        
    }
}
