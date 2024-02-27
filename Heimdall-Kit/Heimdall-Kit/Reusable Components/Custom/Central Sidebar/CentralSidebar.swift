//
//  CentralSidebar.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 27/02/2024.
//

import SwiftUI
import Foundation

public struct CentralSidebar: View {
    
    // MARK: - Properties
    
    private let contentViews: [SidebarItems: AnyView] = [
        .dashboard: AnyView.init(ContentView2.init()),
        .logs: AnyView.init(ContentView1.init()),
        .settings: AnyView.init(ContentView.init()),
    ]
    
    // MARK: - Enums
    
    public enum SidebarItems: Int, CaseIterable, SplitViewItemsProtocol {

        case dashboard
        case logs
        case settings
        
        // MARK: - Properties
        
        public var title: String {
            
            switch(self) {
                
                case .dashboard:
                    return "Dashboard"
                
                case .logs:
                    return "Logs"
                
                case .settings:
                    return "Settings"
            }
            
        }
        
        public var symbol: Image.SymbolsBaseNames {
            
            switch(self) {
                
                case .dashboard:
                    return .dashboard
                
                case .logs:
                    return .logs
                
                case .settings:
                    return .settings
            }
        }
        
    }

    // MARK: - Initialization
    
    public init() {}
    
    public var body: some View {
        BaseSplitView.init(
        
            items: SidebarItems.self,
            selectedIdx: { self.contentViews[
                SidebarItems.init(rawValue: $0)!
            ]},
            content: {
            
                BaseSection.init() {
                    
                    ForEach.init(SidebarItems.allCases, id: \.rawValue) { item in
                        CentralItemView.init(
                            item: .init(item: item)
                        )
                    }

                }

            }
        )

    }
}

