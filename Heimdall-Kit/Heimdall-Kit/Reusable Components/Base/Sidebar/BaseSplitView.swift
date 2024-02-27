//
//  BaseSplitView.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI
import Foundation

public struct BaseSplitView<Content: View, Details: View, T: SplitViewItemsTypeAlias>: View where T.RawValue == Int {
    
    
    // MARK: - Properties
    
    private let items: T.Type
    private let content: Content
    
    @State private var sidebarSelection: Int = 0
    private let selectedIdx: (Int) -> Details
    
    // MARK: - Initialization
    
    
    public init(items: T.Type, @ViewBuilder selectedIdx: @escaping (Int) -> Details, content: () -> Content) {
        self.items = items
        self.selectedIdx = selectedIdx
        self.content = content()
    }
    
    public var body: some View {
        
        return NavigationSplitView.init {
            BaseSidebar.init(selection: $sidebarSelection) {
                content
            }
        } detail: {
            selectedIdx(self.sidebarSelection)
        }
        .ifNotNil(
            value: items.init(rawValue: sidebarSelection),
            execute: {$0.navigationSubtitle($1.title)}
        )
        .navigationSplitViewStyle(.balanced)
        .background(.ultraThinMaterial)



    }
}

