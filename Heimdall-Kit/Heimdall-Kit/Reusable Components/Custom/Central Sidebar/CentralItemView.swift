//
//  CentralItemView.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 22/02/2024.
//

import SwiftUI

public struct CentralItemView: View {
    
    // MARK: - View Properties
    
    private var padding: EdgeInsets {
        return EdgeInsets.init(
            top: 8.00, leading: 4.00,
            bottom: 8.00, trailing: 4.00
        )
    }
    
   // MARK: - Internal
    
    public final class ViewItem: Identifiable {
        
        public var id: Int {
            return label.hashValue
        }
        
        // MARK: - Properties
        internal let label: String
        internal let symbol: Image.SymbolsBaseNames
        
        // MARK: - Initialization
        
        public init(label: String, symbol: Image.SymbolsBaseNames) {
            self.label = label
            self.symbol = symbol
        }
        
    }
    
    // MARK: - Properties
    
    private let item: ViewItem
    
    // MARK: - Initialization
    
    public init(item: ViewItem) {
        self.item = item
    }
    
    public var body: some View {
        
        BaseContentView.init {
            
            HStack.init(content: {
                Image.createImage(with: item.symbol)
                    .resizable()
                    .frame(width: 32.00, height: 32.00)

                BaseLabel.init(text: item.label)
                    .set(scheme: .primary)
                    .with(weight: .regular, textStyle: .caption)
            })
            .listRowInsets(self.padding)
        }

    }
}

