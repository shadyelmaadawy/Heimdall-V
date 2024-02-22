//
//  Font+Ext.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 20/02/2024.
//

import SwiftUI

public extension Font {
    
    /// Raw Text Style Sizes Dictionary
    private static let textStyleSizesDictionary: [Font.TextStyle: CGFloat] = [
        .largeTitle: 34, .title: 26, .title2: 22,
        .title3: 20, .headline: 17, .body: 17,
        .callout: 16, .subheadline: 15, .footnote: 13,
        .caption: 12, .caption2: 11
    ]

    private static var defaultFamilyName: String {
        return "Poppins"
    }

    /// Supported weights for custom font
    enum FontsWeights: String, Identifiable {
        
        public var id: String {
            return self.rawValue
        }
        
        case regular = "Regular"
        case regularItalic = "RegularItalic"

        case bold = "Bold"
        case semiBold = "SemiBold"
        
        case boldItalic = "BoldItalic"
        case semiBoldItalic = "SemiBoldItalic"
    }
    
    /// Get custom font and apply text style.
    /// - Parameters:
    ///   - fontWeight: Required weight for custom font, example bold regular ..etc.
    ///   - textStyle: Text style that will be applied to the font
    /// - Returns: Required font
    internal static func getFont(_ fontWeight: FontsWeights, with textStyle: Font.TextStyle) -> Font {
     
        let resourcesName: String = "\(defaultFamilyName)-\(fontWeight.id)"
        guard let fontSize = textStyleSizesDictionary[textStyle]
              else {
            fatalError("Font size not found \(resourcesName)")
        }
        let baseFont = Font.custom(
            resourcesName,
            size: fontSize,
            relativeTo: textStyle
        )
        return baseFont
    }

}
