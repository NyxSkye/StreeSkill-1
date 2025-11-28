@echo off
echo ========================================
echo    StreeSkill - Mid-Hackathon Demo
echo ========================================
echo.

echo [1/3] Checking Flutter installation...
flutter doctor -v
echo.

echo [2/3] Getting dependencies...
flutter pub get
echo.

echo [3/3] Running the app...
echo.
echo The app will launch in a moment...
echo Navigate through: Home → Courses → Community → Profile
echo.
flutter run

pause
