# Box IA Tutor

iOS SwiftUI starter skeleton for an on-device/remote boxing (“Box AI”) style coaching app.

## What’s in this repo
- **SwiftUI app skeleton** (organized by feature folders)
  - `UI/` – shell/navigation
  - `Capture/` – camera permission + camera preview
  - `Pose/` – pose/vision stubs (placeholder)
  - `Coach/` – coaching logic stubs (placeholder)
- **Localization**: English, Spanish, French
- **Camera usage description** in `Info.plist`
- **XcodeGen** project spec (`ios/project.yml`) so the project can be generated consistently

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
cd ios
xcodegen generate
open BoxIATutor.xcodeproj
```

## Notes
- This repo is currently a **skeleton**. Pose estimation / coaching logic are intentionally stubs to be filled in.
- Camera preview uses `AVCaptureSession` and requests permission at runtime.

## Next steps (suggested)
- Add a real pose pipeline (Vision / MediaPipe / MoveNet / etc.)
- Add a coaching state machine and sample exercise flows
- Add unit tests and CI (GitHub Actions for Xcode)

## Coordination
- Repository: https://github.com/mitre88/box-ia-tutor
- Team comms: this group chat
