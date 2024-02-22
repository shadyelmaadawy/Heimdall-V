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
    
    public init(localizedKey: String, action: @escaping () -> ()) {
        self.text = NSLocalizedString(localizedKey, comment: "")
        self.action = action
    }
    
    public var body: some View {
        
        Button.init(action: action) {
            return BaseLabel.init(text: text)
                .set(scheme: .primary)
                .padding()
        }
        .buttonStyle(.bordered)
    }

}
#Preview {
    
    BaseButton.init(text: "Hello-World!;") {
        print("Hello-World!;")
    }
    
}

