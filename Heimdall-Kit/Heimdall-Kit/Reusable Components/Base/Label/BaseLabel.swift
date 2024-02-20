//
//  BaseLabel.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 20/02/2024.
//

import SwiftUI

public struct BaseLabel: View {

    // MARK: - Enums
    
    public enum Scheme {
        
        case label
        case primary
        case secondary
        case tertiary
        
        var color: Color {
            
            switch(self)
            {
                case .primary:
                    return .white
                default:
                    return .accent
            }
        }

    }
    
    // MARK: - Properties
    
    public let text: String

    // MARK: - Initialization
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text.init(self.text)
    }
    
}

