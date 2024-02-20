//
//  BaseButton.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 20/02/2024.
//

import SwiftUI

public struct BaseButton: View {
    
    // MARK: - User Interface Properties
    
    private var padding: EdgeInsets {
        return EdgeInsets.init(
            top: 8.00,
            leading: 12.00,
            bottom: 8.00,
            trailing: 12.00
        )
    }
    
    // MARK: - Properties
    
    public let text: String
    public let action: () -> ()
    
    // MARK: - Initialization
    
    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }
    
    public var body: some View {
        
        Button.init(action: action) {
            return BaseLabel.init(text: text)
                .padding(
                    padding
                )
                .background(.accent)
                .set(scheme: .primary)
        }
        .buttonStyle(.plain)
        .background(.accent)
        .clipShape(
            RoundedRectangle.init(
                cornerRadius: 8.00, 
                style: .continuous
            )
        )
        .shadow(color: .accent, radius: 4.00)
    }

}
#Preview {
    
    BaseButton.init(text: "Hello-World!;") {
        print("Hello-World!;")
    }
    
}

