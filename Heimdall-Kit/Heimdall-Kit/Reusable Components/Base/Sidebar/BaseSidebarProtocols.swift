//
//  BaseSidebarProtocols.swift
//  Heimdall-Kit
//
//  Created by Shady El-Maadawy on 27/02/2024.
//

import Foundation
import SwiftUI

public protocol SplitViewItemsProtocol {
    var title: String { get }
    var symbol: Image.SymbolsBaseNames { get }
}

public typealias SplitViewItemsTypeAlias = RawRepresentable & SplitViewItemsProtocol

