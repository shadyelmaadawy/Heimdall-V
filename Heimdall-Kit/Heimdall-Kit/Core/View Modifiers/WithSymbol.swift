//
//  WithSymbol.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI
import Foundation

internal struct WithSymbol: ViewModifier {
    
    // MARK: - Properties
    
    private let symbol: Image.SymbolsBaseNames
    private let size: CGFloat
    
    // MARK: - Initialization
    
    init(symbol: Image.SymbolsBaseNames, size: CGFloat) {
        self.symbol = symbol
        self.size = size
    }

    func body(content: Content) -> some View {
        return HStack.init() {
            
            Image.createImage(with: self.symbol)
                .resizable()
                .frame(width: size, height: size)

            content
        }
        
    }
    
}
