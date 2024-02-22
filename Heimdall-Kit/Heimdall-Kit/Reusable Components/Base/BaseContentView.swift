//
//  BaseContentView.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI

public struct BaseContentView<Content: View>: View {
    
    // MARK: - Properties
    
    private let content: Content
    
    // MARK: - Initialization
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        return self.content
    }
}

