import SwiftUI

/// Top-level view for the watch chat conversation.
/// Displays a scrollable list of messages and a compose button.
struct ConversationView: View {
    /// Sample messages for prototyping; this will later be replaced with a view model.
    @State private var messages: [Message] = [
        Message(text: "Hi Mom!", isUser: true),
        Message(text: "Hi sweetie, how's your day?", isUser: false),
        Message(text: "Good!", isUser: true)
    ]

    var body: some View {
        VStack(spacing: 4) {
            ScrollView {
                VStack(spacing: 4) {
                    ForEach(messages) { msg in
                        MessageRow(message: msg)
                    }
                }
            }
            .padding(.top, 8)

            Button(action: sendSampleMessage) {
                Text("Send Test Message")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Chat")
    }

    /// Append a new sample message to demonstrate sending. To be replaced with real send later.
    private func sendSampleMessage() {
        messages.append(Message(text: "New message at \(Date().formatted(date: .omitted, time: .shortened))", isUser: true))
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
