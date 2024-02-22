//
//  HeimdallVirtualizationApp.swift
//  Heimdall-V
//
//  Created by Shady El-Maadawy on 19/02/2024.
//

import SwiftUI
import Heimdall_Kit

@main
struct HeimdallVirtualizationApp: App {
    
    @State private var selectedView: Int = SidebarItems.vm.rawValue
    
    private enum SidebarItems: Int {
        case vm
        case dashboard
        case logs
        case settings
    }
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationSplitView.init {
                
                BaseSidebar.init(selection: $selectedView) {
                    
                    BaseSection(title: "Control Center") {
                        
                        CentralItemView.init(
                            item: .init(label: "Virtual-Machines", symbol: .machines)
                        )
                        .tag(SidebarItems.vm.rawValue)
                        CentralItemView.init(
                            item: .init(label: "Dashboard", symbol: .dashboard)
                        )
                        .tag(SidebarItems.dashboard.rawValue)

                        CentralItemView.init(
                            item: .init(label: "Logs", symbol: .logs)
                        )
                        .tag(SidebarItems.logs.rawValue)

                    }

                    BaseSection.init(title: "Preferences") {
                        
                        CentralItemView.init(
                            item: .init(label: "Settings", symbol: .settings)
                        )
                        .tag(SidebarItems.settings.rawValue)

                    }
                }
                

            } detail: {
                
                switch(selectedView) {
                    
                    case SidebarItems.vm.rawValue:
                        ContentView.init()
                    case SidebarItems.dashboard.rawValue:
                        ContentView1.init()
                    default:
                        ContentView2.init()
                    
                }

            }
            .navigationSplitViewStyle(.balanced)
            .background(.ultraThinMaterial)

        }
    }
}

