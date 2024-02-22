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
        var color: Color {
            
            switch(self)
            {
                case .label:
                    return .white
                case .primary:
                    return .primary
                case .secondary:
                    return .secondary
            }
        }

    }

    // MARK: - Properties
    
    private let text: String

    // MARK: - Initialization
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text.init(self.text)
    }
    
}

