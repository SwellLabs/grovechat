# Project Analysis – GroveChat

*Purpose:* Provide new agents with a high‑level understanding of GroveChat's architecture, technology stack, and entry points. Fill this out before making significant changes.

## Tech Stack Overview
- **Languages/Frameworks:** Swift and SwiftUI for the watchOS and iOS apps. The watch app is built entirely in SwiftUI and targets watchOS. A companion iOS app will also use SwiftUI. A backend service will use Node.js/Express (or serverless functions) to implement HTTP/WebSocket endpoints for messaging. Future work may add Kotlin and Jetpack Compose for Android/Wear OS support.
- **Backend:** Planned to use a cloud‑hosted Node.js backend (e.g., AWS Lambda with API Gateway) that exposes RESTful and WebSocket endpoints for sending and receiving messages.
- **Data Storage:** A NoSQL database such as DynamoDB or Firestore to store user profiles, messages, feature tiers and goals.
- **CI/CD:** GitHub Actions pipelines will build and test the Swift project. TestFlight will be used for distributing pre‑release builds. Additional pipelines will deploy the backend once implemented.
- **Dependencies:** Apple Push Notification Service (APNs) for iOS/watchOS notifications; Firebase Cloud Messaging (FCM) for Android; encryption libraries for end‑to‑end messaging; Swift package dependencies to be determined as features are added.

## Project Structure
- **ios/** – Contains the Xcode projects for the watchOS app and future companion iOS app. Currently includes `WatchApp` with `ContentView.swift`, `ConversationView.swift`, `MessageRow.swift` and `WatchApp.swift`.
- **backend/** – Placeholder for serverless functions or API implementation (not yet created).
- **docs/** – Contains design documents like the Product Requirement Document (PRD) and future architecture diagrams.
- **agent‑system/** – Contains guidelines, templates and workflows for agents, including the project analysis and master implementation plan.
- **README.md** – Describes the project vision and provides high‑level setup instructions.

## Entry Points
- Begin by exploring the watchOS app in `ios/WatchApp/WatchApp.swift`. The root view uses `ConversationView()` to display a conversation UI.
- `ConversationView.swift` defines the main chat interface with a scrollable list of messages and a test send button. `MessageRow.swift` defines the view for a single message bubble.
- Backend entry points will live under `backend/` once implemented.
- Use `agent-system/MASTER_IMPLEMENTATION_PLAN.md` to identify tasks and phases.

## Setup Instructions
- Install Xcode 15 or later on your Mac.
- Clone this repository and checkout a new feature branch following the naming conventions in `agent-system/GIT_WORKFLOW_RULES.md`.
- Open the `ios/` workspace in Xcode. Build and run the watchOS target on a simulator or real device.
- Follow the PRD in `docs/PRD.md` and the implementation plan to guide development.
- Backend and companion app setup instructions will be added as those components are built.

## Additional Notes
- This project is in an early stage. Many components (backend, Android support, iOS companion, parental controls) are not yet implemented.
- The watch app currently uses placeholder data and a mock message list; networking, encryption and persistent storage are future tasks.
