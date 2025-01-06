//
//  ListRowItemView.swift
//  Devote
//
//  Created by Fatih Emre on 6.01.2025.
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Items

    var body: some View {
        HStack {
            Image(systemName: item.completion ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.completion ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    toggleCompletion()
                }
            
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .onTapGesture {
                    toggleCompletion()
                }
            
            Spacer()
        }
        .contentShape(Rectangle()) // Tüm alanın tıklanabilir olmasını sağlar
        .onTapGesture {
            toggleCompletion()
        }
        .animation(.default, value: item.completion)
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }

    private func toggleCompletion() {
        item.completion.toggle()
        feedback.notificationOccurred(.success)
        if item.completion {
            playAudio(sound: "sound-rise", type: "mp3")
        } else {
            playAudio(sound: "sound-tap", type: "mp3")
        }
        try? viewContext.save()
    }
}
