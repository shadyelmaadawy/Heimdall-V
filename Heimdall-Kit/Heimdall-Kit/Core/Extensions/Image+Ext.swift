//
//  Image+Ext.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI
import Foundation

public extension Image {
    
    enum SymbolsBaseNames: String, Identifiable {
        
        public var id: String {
            return self.rawValue
        }
        
        case machines = "desktopcomputer"
        case settings = "gear"
        
        case logs = "point.3.filled.connected.trianglepath.dotted"
        case dashboard = "waveform.path.ecg.rectangle"
    }
    
    internal static func createImage(with symbol: SymbolsBaseNames) -> Image {
        return Image.init(systemName: symbol.id)
        
    }
    
}
