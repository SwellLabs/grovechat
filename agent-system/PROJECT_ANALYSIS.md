# Project Analysis Template

*Purpose:* Provide new agents with a high-level understanding of the project's architecture, technology stack, and entry points. Fill this out before making significant changes.

## Tech Stack Overview
- **Languages/Frameworks:** List languages (Swift, SwiftUI, Kotlin, Jetpack Compose, Node.js etc.) and frameworks used.
- **Backend:** Describe backend technology (e.g., AWS serverless, Node.js, Python) and messaging protocols (HTTP, WebSocket).
- **Data Storage:** Indicate where messages and user data are stored (e.g., DynamoDB, Firestore).
- **CI/CD:** Outline any continuous integration pipelines (GitHub Actions, Fastlane).
- **Dependencies:** List external services, libraries or APIs (APNs, FCM, encryption libs etc.)

## Project Structure
- **ios/** – Contains the iOS and watchOS app source code and Xcode workspace.
- **backend/** – Contains serverless functions or API implementation.
- **docs/** – Contains design documents, PRDs, guidelines.
- **agent-system/** – Contains guidelines, templates and workflows for agents.

Briefly describe subdirectories and important files.

## Entry Points
- Where should a new agent start exploring the code? Provide pointers to main modules or packages (e.g., `ios/WatchApp/App.swift`, `backend/src/index.js`).
- Explain any design patterns or architecture (MVVM, Clean Architecture) used.
- Provide information about testing frameworks and how to run tests.

## Setup Instructions
- Provide steps to set up development environment (install Xcode, CocoaPods, Node.js).
- How to build and run the app(s) locally.
- How to run backend locally or deploy.

## Additional Notes
- Mention any known issues, ongoing refactors or special considerations.
