import SwiftUI

struct MessageRow: View {
    let message: Message

    var body: some View {
        HStack {
            if message.isUser {
                Spacer()
                Text(message.text)
                    .padding(8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            } else {
                Text(message.text)
                    .padding(8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                Spacer()
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    MessageRow(message: Message(text: "Preview message", isUser: false))
}
https://github.com/SwellLabs/grovechat/new/feature/watch-mvp-ui/ios/WatchApp?filename=MessageRow.swift
