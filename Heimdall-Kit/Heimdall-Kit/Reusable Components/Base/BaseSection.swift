//
//  BaseSection.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI

public struct BaseSection<Content: View>: View {
    
    // MARK: - Properties

    private let title: String?
    private let content: Content
    
    // MARK: - Initialization
    
    public init(title: String? = nil, @ViewBuilder content: () -> Content) {
        self.title = title?.uppercased()
        self.content = content()
    }
    
    public var body: some View {
        
        return Section.init(content: {
            self.content
        })
    }
}


