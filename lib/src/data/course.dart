import "utils.dart";
import "chat.dart";

/// A CourseID extension type to prevent errors.
extension type CourseID(String value) {}

/// A class for each BU course.
class Course {
  /// A unique ID for this course.
  final CourseID id;

  /// Department of this course.
  final String department;

  /// Course number for this course.
  final int courseNumber;

  /// Subject of this course.
  final String subject;

  /// Chat object for this course.
  final Chat chat;

  /// A constructor for the Course class
  Course({
    required this.id,
    required this.department,
    required this.courseNumber,
    required this.subject,
    required this.chat,
  });

  /// A function to create JSON from the course object.
  Course.fromJson(Json json) :
    id = json["id"],
    department = json["department"],
    courseNumber = json["courseNumber"],
    subject = json["subject"],
    chat = json["chat"];

  /// Convert this Course to its JSON representation.
  Json toJson() => {
    "id": id,
    "department": department,
    "courseNumber": courseNumber,
    "subject": subject,
    "chat": chat.toJson(),
  };
}
