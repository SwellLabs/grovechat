# GroveChat Product Requirement Document

## Version 4 – Updated Vision

### Overview

This document outlines the requirements for **GroveChat**, a child‑friendly watch messaging platform that runs on Apple Watch and Wear OS devices. The app provides parents with fine‑grained control over what their children can do and offers a progressive learning path: children start with text‑only chats to a single trusted contact and gradually unlock voice notes, GIFs and other features as they demonstrate responsibility. A companion app lets parents configure contacts, permissions and content filters. GroveChat uses a data‑based messaging protocol, so it works over Wi‑Fi, cellular or potential mesh/LoRa networks in future versions.

### Feasibility and Technical Considerations

- **No standalone SMS on Apple Watch**: Apple's documentation states that a cellular Apple Watch can send SMS/MMS away from the iPhone only if the paired iPhone is powered on and connected to Wi‑Fi or cellular【8†L3】. There is no public API for third‑party apps to send SMS on watchOS, so GroveChat will rely on a custom data protocol instead of SMS.
- **Carrier limitations on Wear OS**: Wear OS devices may send texts via their own phone number when provisioned, but support varies across carriers and many watches still rely on the phone for SMS【8†L3】. Using a data protocol avoids these inconsistencies.
- **Network flexibility**: Because the app uses HTTP/WebSocket, it can operate over any IP network. Future versions may integrate with mesh or LoRa radios via a companion device.

### Product Vision and Goals

| Goal | Rationale |
| --- | --- |
| Provide a safe, minimal communication channel with progressive unlock | Start with text only, then add voice notes, filtered GIFs and other capabilities as the child matures. Parents decide when to unlock each tier. |
| Enable parent‑defined contacts and content filters | Parents choose who their child can communicate with and can filter GIF categories. |
| Cross‑platform and network‑agnostic | Runs on watchOS and Wear OS; messaging works over Wi‑Fi, cellular or optional mesh/LoRa via a companion bridge. |
| Support quick message input without exposing the system GIF keyboard | Use voice dictation, scribble/keyboard and curated quick replies; provide a safe GIF library when unlocked. |
| Encourage digital literacy through graduated features | Parents can track usage and decide when to enable new capabilities, turning the app into a teaching tool. |

### User Stories

**Parent**

- I want to set up the watch for my child and select which features (text, voice, GIFs) are available initially.
- I want to filter the GIF library so that only pre‑approved categories are shown.
- I want to view analytics about how often my child uses messaging and adjust limits individually.
- I want to define milestones that automatically unlock new features or send me a request to review.
- I want the option to pair the app with a mesh or LoRa module for off‑grid trips.
- I want to choose from templated defaults provided by communities (churches, schools etc.) and share my own templates easily.

**Child**

- I want to communicate easily with my parent or approved contacts without complicated menus.
- I want to earn new features like voice messages and fun GIFs by demonstrating responsible use.
- I want to see my progression level or milestones so I understand what I need to do to unlock more features.

### Scope and Features

#### Core MVP Features

- Single conversation UI on the watch.
- Companion smartphone app for parental controls (contacts, feature flags, schedule).
- Custom backend with end‑to‑end encrypted messaging via HTTP/WebSocket.
- Offline queueing and retry on connectivity return.

#### Extended Features

- **Progressive feature tiers**: Define tiers such as "Text Only", "Voice Enabled", "GIF Enabled", "Attachments Enabled." Parents can manually upgrade tiers or set automated rules.
- **Filtered GIF library**: Replace the system GIF keyboard with a curated library hosted on the backend. Parents enable categories.
- **Usage analytics and rewards**: Parents view statistics, send badges and set milestones for unlocking features.
- **Template engine and goals**: Templates define tiers and unlock conditions (chores, reading assignments). Organisations can publish templates via QR code or URL.
- **Third‑party app and event integration**: In later versions, allow time budgets for other apps, event modes (e.g., camp retreat), and partner services.
- **Mesh/LoRa support**: Abstract the network layer so messages can be relayed through a mesh or LoRa module when off‑grid.
- **LLM tutors/guardians (future)**: Optional generative AI modules (reading coach, math tutor, AI guardian) that parents can enable with privacy safeguards.

### Architecture

```
Child's Watch  <——HTTPS/WebSocket——>  Messaging Backend  <——Push Notifications——> Parent’s Phone
 watchOS/Wear OS  (end‑to‑end encryption)        APNs/FCM
+ UI & input                         + stores messages      + Parental control app
+ Offline queue                      + policy engine        + analytics & rewards
                 ∆ mesh/LoRa bridge via TransportManager (future)
```

- The watch app communicates directly with the backend over HTTPS when connected. The backend pushes messages to the parent’s device via APNs or FCM.
- A policy engine in the backend enforces feature tiers, GIF filters and goals.
- The networking layer can be extended to support mesh or LoRa transports.

### Roadmap

| Phase | Timeline | Tasks |
| --- | --- | --- |
| 0 – User research & template design | Weeks 1–4 | Conduct surveys with parents and youth leaders; design default templates and goal structures; build template schema and signature verification. |
| 1 – MVP messaging | Weeks 5–12 | Develop watch and phone apps for text and voice messaging over data; implement contact management and template import/export; integrate curated GIF library and parental controls. |
| 2 – Goal tracking & progressive unlocking | Weeks 13–20 | Add goal tracking UI; integrate with chores/reading apps; allow parents to tie unlocks to milestones; deploy recommended templates via beta marketplace. |
| 3 – Third‑party app control & event modes | Weeks 21–28 | Integrate with FamilyControls (iOS) and Digital Wellbeing (Android); implement time allowances and event‑specific modes; test with pilot organisations. |
| 4 – Mesh/LoRa prototyping | Weeks 29–34 | Evaluate hardware modules (e.g. Meshtastic); build proof of concept for offline message relay; test in community settings. |
| 5 – LLM tutor/guardian pilots | Weeks 35–42 | Integrate small language models; design safe prompts; run closed beta with limited families. |
| 6 – Marketplace & community launch | Weeks 43–50 | Launch full template and AI module marketplace; onboard partner organisations; roll out marketing campaign. |

### Risks and Mitigations

| Issue | Impact | Mitigation |
| --- | --- | --- |
| Curation burden for GIFs | Maintaining a safe library requires moderation. | Start with a small curated set; use content filtering APIs; allow parents to upload their own. |
| Over‑complexity for parents | Too many settings could overwhelm. | Provide sensible defaults and guided setup; offer age‑based presets. |
| Hardware limitations for mesh/LoRa | Watches lack LoRa radios; external modules add cost. | Treat mesh/LoRa as an optional accessory for later versions; ensure the core app works offline via queueing. |
| Data protection | Collecting analytics increases privacy responsibilities. | Anonymise data where possible; allow opt‑out; comply with COPPA and GDPR‑K. |
| Feature creep | Too many features could delay launch. | Focus on core messaging for MVP; gather feedback before expanding. |

### Conclusion

GroveChat begins as a watch‑first messenger that grows with each child. Parents can start with a simple, safe chat and progressively unlock more capabilities via templates and milestones. By avoiding SMS restrictions【8†L3】 and using a data protocol, GroveChat works across watchOS and Wear OS and can be extended to mesh or LoRa networks in future. The roadmap outlines a path from MVP to a rich ecosystem of third‑party integrations, templates and AI tutors, ensuring the product remains simple yet adaptable.
