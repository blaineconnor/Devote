//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Fatih Emre on 6.01.2025.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
