//
//  CheckBoxStyle.swift
//  Devote
//
//  Created by Fatih Emre on 6.01.2025.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                    feedback.notificationOccurred(.success)
                    
                    if configuration.isOn {
                        playAudio(sound: "sound-rise", type: "mp3")
                    } else {
                        playAudio(sound: "sound-tap", type: "mp3")
                    }
                }
            configuration.label
        }//: HSTACK
    }
}
