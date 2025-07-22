import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}
struct ConversationView: View {
    @State private var messages: [Message] = [
        Message(text: "Hi there!", : false),
        Message(text: "Hello!", isUser: true),
        Message(text: "How are you?", isUser: false)
    ]

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: leading, spacing: 4) {
                    ForEach() { message in
                        MessageRow(message: message)
}
                
                .frame(: .infinity, alignment: .leading)
            }
            .padding(.bottom, 8)

            Button(action: {
                // Stub: append a new message for testing
                messages.append(Message(text: "New message", isUser: true))
            }) {
                Text("Send message")
            }
        }
        .padding()
        .navigationTitle("Chat")
    }
}

#Preview {
    ConversationView()
}
