//
//  View+ViewModifiers.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 20/02/2024.
//

import SwiftUI

public extension View {
 
    func with(
        weight: Font.FontsWeights,
        textStyle: Font.TextStyle
    ) -> some View {
        
        return modifier(
            WithTextStyle.init(
                weight: weight, textStyle: textStyle
            )
        )
        
    }
    
    func set(scheme: BaseLabel.Scheme) -> some View {
        
        return modifier(
            WithLabelColorScheme.init(
                scheme: scheme
            )
        )
        
    }
}
