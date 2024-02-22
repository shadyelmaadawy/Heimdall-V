//
//  WithLabelColorScheme.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI
import Foundation

internal struct WithLabelColorScheme: ViewModifier {
    
    // MARK: - Properties
    
    private let scheme: BaseLabel.Scheme
    
    // MARK: - Initialization
    
    init(scheme: BaseLabel.Scheme) {
        self.scheme = scheme
    }
    
    public func body(content: Content) -> some View {
        
        return content
            .foregroundStyle(scheme.color)
    }
    
}

