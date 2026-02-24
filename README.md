# Box AI Tutor (iOS)

SwiftUI starter skeleton for a Box AI–powered tutor app.

## What’s included
- Minimal SwiftUI app shell
- Basic folder structure: Models, Views, Services
- Placeholder `BoxAIService` for future API integration
- XcodeGen project spec (`project.yml`)

## Requirements
- macOS with Xcode 15+
- XcodeGen (recommended)

Install XcodeGen:
```bash
brew install xcodegen
```

## Generate the Xcode project
From the repo root:
```bash
xcodegen generate
open BoxIATutor.xcodeproj
```

## Suggested plan
1. **Project setup**
   - Confirm Xcode project (target iOS 17+)
   - Add app icon, launch screen, and basic branding
2. **Core UI**
   - Chat-style interface (messages list + composer)
   - Conversation state management (ViewModel)
3. **API integration**
   - Box OAuth / JWT auth setup
   - Box AI endpoints: prompt, summarize, Q&A
   - Secure key storage (Keychain)
4. **Data layer**
   - Local conversation history (SwiftData/CoreData)
   - Optional document picker + file upload to Box
5. **Polish & release**
   - Error handling, offline states
   - Accessibility + localization
   - TestFlight build

## Structure
```
BoxIATutor/
  BoxIATutorApp.swift
  Views/
    ContentView.swift
  Models/
    ChatMessage.swift
  Services/
    BoxAIService.swift
  Assets.xcassets/
```

---

> Note: This repo currently contains the SwiftUI skeleton files only. Create the Xcode project or integrate these files into an existing project as needed.
