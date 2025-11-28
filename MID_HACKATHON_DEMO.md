# StreeSkill - Mid-Hackathon Evaluation Version

## 🎯 Project Overview

**StreeSkill** is a mobile learning platform designed to empower women through accessible, high-quality skill development courses. Built for the WIE HackEarth-2025 hackathon.

### Problem Statement
- 70% of women in India lack access to quality skill development
- Limited opportunities for career advancement and financial independence
- Need for flexible, affordable learning solutions

### Our Solution
A comprehensive mobile app that provides:
- **Curated Course Library**: 100+ courses across Technology, Business, Finance, Design
- **Expert Instructors**: Women professionals teaching practical skills
- **Community Support**: Peer learning and mentorship network
- **Progress Tracking**: Gamified learning with certificates and achievements

---

## ✨ Key Features Implemented

### 1. Home Dashboard
- **Personalized Welcome**: User-specific greeting and profile
- **Impact Metrics Card**: Visual display of learning progress
  - Courses completed
  - Hours learned
  - Certificates earned
  - Skill score with progress bar
- **Continue Learning**: Horizontal scroll of in-progress courses
- **Trending Courses**: Popular courses with ratings and enrollment stats

### 2. Course Catalog
- **Category Filtering**: Technology, Marketing, Finance, Design, Business
- **Grid Layout**: Visual course cards with thumbnails
- **Course Details**: 
  - Instructor information
  - Duration and difficulty level
  - Rating and student count
  - Module breakdown
- **Video Player Integration**: Full-screen video playback with controls

### 3. Community Hub
- **Social Feed**: User posts and success stories
- **Community Stats**: Active members and engagement metrics
- **Interaction Features**: Like, comment, and share functionality
- **Create Posts**: Share achievements and connect with peers

### 4. User Profile
- **Achievement Badges**: Gamified milestones (First Course, Streak, Top Learner)
- **Completed Courses**: List with certificate download options
- **Learning Statistics**: Visual representation of progress
- **Settings**: Notifications, language, privacy controls

---

## 🎨 Design Highlights

### Visual Identity
- **Primary Color**: Purple (#6B4CE6) - represents empowerment and creativity
- **Gradient Accents**: Purple to pink gradients for modern appeal
- **Typography**: Google Fonts (Inter) for clean, professional look
- **Icons**: Material Design icons for consistency

### UX Principles
- **Intuitive Navigation**: Bottom navigation bar for easy access
- **Visual Hierarchy**: Clear content organization with cards and sections
- **Responsive Design**: Adapts to different screen sizes
- **Loading States**: Smooth transitions and progress indicators

---

## 📊 Impact Metrics (Demo Data)

### User Engagement
- **12,500+** Active learners
- **450** Daily active users
- **2,300+** Community posts
- **4.8** Average course rating

### Learning Outcomes
- **78.5%** Average skill score improvement
- **24 hours** Average learning time per user
- **3 courses** Average completion rate
- **2 certificates** Average per active user

---

## 🛠️ Technical Stack

### Frontend
- **Framework**: Flutter 3.10+
- **Language**: Dart
- **State Management**: Provider pattern
- **UI Components**: Material Design 3

### Key Dependencies
```yaml
- google_fonts: ^6.1.0        # Typography
- video_player: ^2.8.1        # Video playback
- chewie: ^1.7.4              # Video player UI
- provider: ^6.1.1            # State management
- fl_chart: ^0.66.0           # Data visualization
- shared_preferences: ^2.2.2  # Local storage
```

### Architecture
- **MVVM Pattern**: Separation of concerns
- **Provider State Management**: Reactive UI updates
- **Modular Structure**: Screens, models, providers organized separately

---

## 🚀 Setup & Demo Instructions

### Prerequisites
- Flutter SDK 3.10 or higher
- Android Studio / VS Code
- Android Emulator or iOS Simulator

### Quick Start

1. **Install Dependencies**
```bash
flutter pub get
```

2. **Run the App**
```bash
# For Android
flutter run

# For iOS
flutter run -d ios

# For Web (demo only)
flutter run -d chrome
```

3. **Demo Flow**
   - App opens with animated splash screen
   - Navigate through bottom tabs: Home → Courses → Community → Profile
   - Tap any course to view details and play demo video
   - Explore community posts and user profile

---

## 📱 Screenshots & Demo Points

### For Judges/Evaluators

**1. Splash Screen (0:00-0:03)**
- Branded entry with smooth animation
- Sets professional tone

**2. Home Dashboard (0:03-0:30)**
- Highlight impact metrics card
- Show personalized recommendations
- Demonstrate smooth scrolling

**3. Course Catalog (0:30-1:00)**
- Filter by category
- Show course variety
- Open course detail page

**4. Video Player (1:00-1:30)**
- Full-screen video playback
- Professional player controls
- Seamless integration

**5. Community (1:30-2:00)**
- Active social feed
- Community engagement stats
- User interaction features

**6. Profile (2:00-2:30)**
- Achievement badges
- Completed courses
- Progress visualization

---

## 🎯 Hackathon Rubric Alignment

### 1. Innovation & Impact (30%)
- **Novel Approach**: Combines education, community, and gamification
- **Social Impact**: Addresses gender gap in skill development
- **Scalability**: Platform can expand to multiple languages and regions

### 2. Technical Implementation (25%)
- **Clean Architecture**: MVVM pattern with Provider
- **Modern Stack**: Flutter for cross-platform development
- **Code Quality**: Well-organized, documented, and maintainable

### 3. User Experience (25%)
- **Intuitive Design**: Easy navigation and clear information hierarchy
- **Visual Appeal**: Professional design with consistent branding
- **Accessibility**: Material Design guidelines for inclusive UX

### 4. Completeness (20%)
- **Core Features**: All major features implemented and functional
- **Demo Ready**: Smooth demo flow with realistic data
- **Documentation**: Comprehensive setup and usage instructions

---

## 🔮 Future Enhancements

### Phase 2 (Post-Hackathon)
- [ ] Firebase backend integration
- [ ] Real-time chat and mentorship
- [ ] AI-powered course recommendations
- [ ] Offline course downloads
- [ ] Multi-language support (Hindi, Tamil, Bengali)
- [ ] Payment gateway for premium courses
- [ ] Live class scheduling
- [ ] Job board integration

### Phase 3 (Production)
- [ ] Instructor dashboard
- [ ] Advanced analytics
- [ ] Mobile app optimization
- [ ] Web platform
- [ ] Corporate partnerships
- [ ] Government certification integration

---

## 👥 Team & Credits

**Project**: StreeSkill  
**Hackathon**: WIE HackEarth-2025  
**Category**: Social Impact & Education Technology  

### Technologies Used
- Flutter & Dart
- Material Design 3
- Provider State Management
- Video Player Integration
- Google Fonts

---

## 📞 Contact & Support

For questions or demo requests during evaluation:
- Check the app's built-in help section
- Review code documentation in `/lib` directory
- Test all features using the demo data provided

---

## ✅ Evaluation Checklist

- [x] App builds and runs successfully
- [x] All navigation flows work smoothly
- [x] Video playback functions correctly
- [x] UI is responsive and polished
- [x] Demo data is realistic and comprehensive
- [x] Code is well-organized and documented
- [x] README and documentation are complete

---

**Version**: 1.0.0 (Mid-Hackathon)  
**Last Updated**: November 28, 2025  
**Status**: Ready for Evaluation ✅
