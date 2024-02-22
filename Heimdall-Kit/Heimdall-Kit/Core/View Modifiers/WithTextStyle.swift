//
//  WithTextStyle.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI
import Foundation

internal struct WithTextStyle: ViewModifier {
    
    // MARK: - Properties
    
    private let weight: Font.FontsWeights
    private let textStyle: Font.TextStyle
    
    // MARK: - Initialization
    
    init(weight: Font.FontsWeights, textStyle: Font.TextStyle) {
        self.weight = weight
        self.textStyle = textStyle
    }
    
    public func body(content: Content) -> some View {
        
        return content
            .font(
                .getFont(weight, with: textStyle)
            )
    }
    
}

