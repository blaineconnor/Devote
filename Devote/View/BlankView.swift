//
//  BlankView.swift
//  Devote
//
//  Created by Fatih Emre on 6.01.2025.
//

import SwiftUI

struct BlankView: View {
    // MARK: - PROPERTY
    
    var backgroundColor : Color
    var backgroundOpacity: Double
    
    // MARK: - BDOY
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
    }
}
