class Course {
  final String id;
  final String title;
  final String instructor;
  final String duration;
  final String level;
  final double rating;
  final int enrolledCount;
  final String description;
  final String category;
  final String thumbnailUrl;
  final String videoUrl;
  final List<String> modules;

  Course({
    required this.id,
    required this.title,
    required this.instructor,
    required this.duration,
    required this.level,
    required this.rating,
    required this.enrolledCount,
    required this.description,
    required this.category,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.modules,
  });
}
