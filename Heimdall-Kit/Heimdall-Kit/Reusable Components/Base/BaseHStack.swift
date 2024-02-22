//
//  BaseHStack.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI

public struct BaseHStack<Content: View>: View {
    
    // MARK: - Properties
    
    private let content: Content
    
    // MARK: - Initialization
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        return HStack.init() {
            return self.content
        }
    }
}

