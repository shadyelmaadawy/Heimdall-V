//
//  View+ViewModifiers.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 20/02/2024.
//

import SwiftUI

public extension View {
 
    func add(symbol: Image.SymbolsBaseNames, size: CGFloat) -> some View {
        return modifier(
            WithSymbol.init(symbol: symbol, size: size)
        )
    }
    
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
