//
//  Node.swift
//  Heimdall-Utilities
//
//  Created by Shady El-Maadawy on 19/02/2024.
//

import Foundation

public final class Node<V>{
    
    // MARK: - Properties
    
    public var value: V
    public var next: Node?
    
    // MARK: - Initialization
    
    init(value: V, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}
