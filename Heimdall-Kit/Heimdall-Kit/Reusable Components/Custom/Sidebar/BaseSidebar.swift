//
//  BaseSidebar.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI

public struct BaseSidebar<Content: View, V: Hashable>: View {
    
    // MARK: - View Properties
    
    private var maxItemSize: CGFloat {
        return 190.00
    }
    
    // MARK: - Properties
        
    private let content: Content
    @Binding private var selection: V
  
    // MARK: - Initialization
    
    public init(selection: Binding<V>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    public var body: some View {
        return List.init(selection: $selection) {
            self.content
        }
        .listStyle(.sidebar)
        .listRowSeparator(.visible)
        .navigationSplitViewColumnWidth(maxItemSize)

    }
    
}

