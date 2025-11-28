import 'package:flutter/foundation.dart';
import '../models/course.dart';

class CourseProvider with ChangeNotifier {
  final List<Course> _courses = [
    Course(
      id: '1',
      title: 'Digital Marketing Mastery',
      instructor: 'Anjali Mehta',
      duration: '8 weeks',
      level: 'Beginner',
      rating: 4.8,
      enrolledCount: 1250,
      description: 'Learn social media marketing, SEO, and content strategy',
      category: 'Marketing',
      thumbnailUrl: 'https://via.placeholder.com/300x200/6B4CE6/FFFFFF?text=Digital+Marketing',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      modules: ['Social Media Basics', 'SEO Fundamentals', 'Content Creation', 'Analytics'],
    ),
    Course(
      id: '2',
      title: 'Full Stack Web Development',
      instructor: 'Kavita Singh',
      duration: '12 weeks',
      level: 'Intermediate',
      rating: 4.9,
      enrolledCount: 980,
      description: 'Build modern web applications from scratch',
      category: 'Technology',
      thumbnailUrl: 'https://via.placeholder.com/300x200/E91E63/FFFFFF?text=Web+Development',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      modules: ['HTML/CSS', 'JavaScript', 'React', 'Node.js', 'Databases'],
    ),
    Course(
      id: '3',
      title: 'Financial Planning & Investment',
      instructor: 'Meera Patel',
      duration: '6 weeks',
      level: 'Beginner',
      rating: 4.7,
      enrolledCount: 1500,
      description: 'Master personal finance and investment strategies',
      category: 'Finance',
      thumbnailUrl: 'https://via.placeholder.com/300x200/4CAF50/FFFFFF?text=Finance',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      modules: ['Budgeting', 'Savings', 'Investments', 'Tax Planning'],
    ),
    Course(
      id: '4',
      title: 'Graphic Design Fundamentals',
      instructor: 'Riya Desai',
      duration: '10 weeks',
      level: 'Beginner',
      rating: 4.6,
      enrolledCount: 850,
      description: 'Create stunning visuals with Adobe Creative Suite',
      category: 'Design',
      thumbnailUrl: 'https://via.placeholder.com/300x200/FF9800/FFFFFF?text=Graphic+Design',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      modules: ['Design Principles', 'Photoshop', 'Illustrator', 'Portfolio'],
    ),
    Course(
      id: '5',
      title: 'Data Science with Python',
      instructor: 'Dr. Sneha Kumar',
      duration: '14 weeks',
      level: 'Advanced',
      rating: 4.9,
      enrolledCount: 720,
      description: 'Analyze data and build ML models',
      category: 'Technology',
      thumbnailUrl: 'https://via.placeholder.com/300x200/2196F3/FFFFFF?text=Data+Science',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      modules: ['Python Basics', 'Pandas', 'Machine Learning', 'Visualization'],
    ),
    Course(
      id: '6',
      title: 'Entrepreneurship Essentials',
      instructor: 'Pooja Reddy',
      duration: '8 weeks',
      level: 'Intermediate',
      rating: 4.8,
      enrolledCount: 1100,
      description: 'Start and grow your own business',
      category: 'Business',
      thumbnailUrl: 'https://via.placeholder.com/300x200/9C27B0/FFFFFF?text=Entrepreneurship',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      modules: ['Business Planning', 'Funding', 'Marketing', 'Scaling'],
    ),
  ];

  List<Course> get courses => _courses;

  List<Course> getCoursesByCategory(String category) {
    return _courses.where((course) => course.category == category).toList();
  }

  Course? getCourseById(String id) {
    return _courses.firstWhere((course) => course.id == id);
  }
}
