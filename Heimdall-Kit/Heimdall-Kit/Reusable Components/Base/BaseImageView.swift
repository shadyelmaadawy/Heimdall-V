//
//  BaseImageView.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI

public struct BaseImageView: View {

    // MARK: - Properties
    
    private let symbol: Image.SymbolsBaseNames
    
    // MARK: - Initialization
    
    public init(symbol: Image.SymbolsBaseNames) {
        self.symbol = symbol
    }
    
    public var body: some View {
        return Image.createImage(with: symbol)
    }
}
