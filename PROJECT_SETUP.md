# Box AI - Project Setup & Coordination

## 🎯 Immediate Actions Required

### For @Vps_kimi_bot (UI/UX Designer):
1. **Create UI wireframes** for main screens:
   - Camera/coaching view
   - Technique library
   - Settings/configuration
   - Progress tracking

2. **Design "Liquid Glass" components**:
   - Button styles
   - Card layouts
   - Navigation elements
   - Animation concepts

3. **Deliverables** (upload to repo):
   - `Design/Wireframes/` - Figma/Sketch files or images
   - `Design/Components/` - SwiftUI component prototypes
   - `Design/Assets/` - Icons, colors, typography specs

### For @Mi_codex_bot (iOS Developer):
1. **Setup Xcode project structure**:
   - Create `BoxAI.xcodeproj`
   - Configure SwiftUI project template
   - Setup target configurations

2. **Implement core architecture**:
   - MVVM foundation
   - Service layer (CameraService, AIService)
   - Localization setup (en, es, fr)

3. **Deliverables** (upload to repo):
   - `BoxAI.xcodeproj` - Xcode project
   - Basic app structure with empty features
   - Core service implementations

### For @Codex_vps_bot (Project Lead):
1. **Coordinate team progress**
2. **Setup CI/CD pipeline** (GitHub Actions)
3. **Manage repository structure**
4. **Ensure all code meets requirements**

## 📋 First 24-Hour Milestones

### Day 1 Goals (Today - 24 Feb 2026):
- [ ] **@Vps_kimi_bot**: Basic wireframes for 3 main screens
- [ ] **@Mi_codex_bot**: Xcode project + basic SwiftUI structure
- [ ] **@Codex_vps_bot**: CI/CD pipeline + project documentation
- [ ] **All**: Initial commit to repository

### Day 2-3 Goals:
- [ ] **@Vps_kimi_bot**: Complete UI component library
- [ ] **@Mi_codex_bot**: Camera module foundation
- [ ] **@Mi_codex_bot**: Basic AI service skeleton
- [ ] **@Codex_vps_bot**: Testing framework setup

## 🛠️ Technical Requirements

### Camera Module Requirements:
- Real-time video capture (AVFoundation)
- 60 FPS processing capability
- Pose detection integration points
- Privacy-compliant video handling

### AI/ML Requirements:
- On-device processing (Apple Intelligence)
- Boxing pose detection model
- Technique analysis algorithms
- Multi-language feedback system

### UI/UX Requirements:
- "Liquid Glass" aesthetic (smooth, reflective, fluid)
- Professional boxing theme
- Intuitive coaching interface
- Multi-language support (en, es, fr)

## 📁 Repository Structure to Create
```
box-ia-tutor/
├── BoxAI/                    # Main iOS project
│   ├── BoxAI.xcodeproj
│   ├── BoxAI/
│   └── BoxAITests/
├── Design/                   # UI/UX assets
│   ├── Wireframes/
│   ├── Components/
│   └── Assets/
├── Documentation/            # Project docs
│   ├── Requirements/
│   ├── Architecture/
│   └── API/
├── Scripts/                  # Build/utility scripts
└── .github/workflows/        # CI/CD pipelines
```

## 🔄 Workflow Process
1. **Daily Check-ins**: Each bot reports progress
2. **Code Reviews**: Peer review before merging
3. **Testing**: Each feature includes tests
4. **Documentation**: All code must be documented

## 🚨 Blockers & Dependencies
1. **Apple Intelligence API access** - @Mi_codex_bot to confirm
2. **Boxing technique references** - Need professional resources
3. **Multi-language content** - Translation requirements

## 📞 Communication Protocol
- **Urgent issues**: Tag relevant bot + @Codex_vps_bot
- **Daily updates**: Post in group chat by 18:00 UTC
- **Code ready**: Create PR, tag team for review
- **Blocked**: Immediately notify @Codex_vps_bot

## 🎯 Success Criteria
- **Functional**: Real-time camera with AI feedback
- **Professional**: Authentic boxing techniques
- **Polished**: Premium "Liquid Glass" UI/UX
- **Complete**: All features in repo `mitre88/box-ia-tutor`

---

**Next Team Check-in**: 25 Feb 2026, 09:00 UTC  
**Project Lead**: @Codex_vps_bot  
**Repo**: https://github.com/mitre88/box-ia-tutor.git