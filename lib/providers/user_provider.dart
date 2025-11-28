import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String _userName = 'Priya Sharma';
  int _coursesCompleted = 3;
  int _hoursLearned = 24;
  int _certificatesEarned = 2;
  double _skillScore = 78.5;
  List<String> _completedCourses = ['Digital Marketing', 'Web Development Basics', 'Financial Literacy'];

  String get userName => _userName;
  int get coursesCompleted => _coursesCompleted;
  int get hoursLearned => _hoursLearned;
  int get certificatesEarned => _certificatesEarned;
  double get skillScore => _skillScore;
  List<String> get completedCourses => _completedCourses;

  void updateProgress(String courseName) {
    if (!_completedCourses.contains(courseName)) {
      _completedCourses.add(courseName);
      _coursesCompleted++;
      _hoursLearned += 8;
      _skillScore += 5.0;
      notifyListeners();
    }
  }

  void earnCertificate() {
    _certificatesEarned++;
    notifyListeners();
  }
}
