//
//  BaseSplitView.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI
import Foundation

public struct BaseBaseSplitView<Content: View>: View {
    
    private let sidebarContent: Content
    private let sidebarDetails: Content
    @Binding private var sidebarSelection: Int
    
    init(@ViewBuilder sidebarContent: () -> Content, @ViewBuilder sidebarDetails: () -> Content, sidebarSelection: Binding<Int>) {
        self.sidebarContent = sidebarContent()
        self.sidebarDetails = sidebarDetails()
        self._sidebarSelection = sidebarSelection
    }
    
    public var body: some View {
        return Text("Omk ar3a")
    }
}
