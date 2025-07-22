import SwiftUI

/// Model representing a single chat message.
/// `isUser` indicates whether the message was sent by the child (user) or received from the parent.
struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

/// View showing a single message bubble aligned left or right depending on sender.
struct MessageRow: View {
    let message: Message

    var body: some View {
        HStack {
            if message.isUser {
                Spacer(minLength: 0)
                Text(message.text)
                    .padding(10)
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            } else {
                Text(message.text)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.primary)
                    .cornerRadius(10)
                Spacer(minLength: 0)
            }
        }
        .padding(.vertical, 2)
        .padding(.horizontal, 8)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MessageRow(message: Message(text: "Hello Parent!", isUser: true))
            MessageRow(message: Message(text: "Hello Child!", isUser: false))
        }
        .previewLayout(.sizeThatFits)
    }
}
