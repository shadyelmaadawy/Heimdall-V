//
//  View+Ext.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 27/02/2024.
//

import SwiftUI
import Foundation

internal extension View {
    
    @ViewBuilder
    func ifNotNil<T, Content: View>(value: T?, execute: (Self, T) -> Content) -> some View {
        if let value {
            execute(self, value)
        } else {
            self
        }
    }
    
}
