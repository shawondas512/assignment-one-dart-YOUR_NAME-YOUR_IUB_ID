// Question 2
/**
 * EXPECTED OUTPUT:
 * Student Scores: {Alice: <random>, Bob: <random>, ...}
 * Highest Score: <Name> with <Score>
 * Lowest Score: <Name> with <Score>
 * Average Score: <Value>
 * Alice: <Score> (Category)
 * ...
 */

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Create a Map<String, int> to store student scores
  Map<String, int> studentScores = {};

  // 3. Use a for loop to assign random scores (60-100) to each student
  Random random = Random();
  for (String student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41); // 60 + (0-40) = 60-100
  }

  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;

  // Calculate total score for average
  int totalScore = 0;

  // Find highest, lowest, and calculate total
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    totalScore += score;

    // Check for highest score
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    // Check for lowest score
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  }

  // Calculate average
  averageScore = totalScore / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(1)}");
  print("");

  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    // Switch statement based on score ranges
    switch (score) {
      case >= 90 && <= 100:
        category = "Excellent";
        break;
      case >= 80 && < 90:
        category = "Good";
        break;
      case >= 70 && < 80:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
        break;
    }

    print("$student: $score ($category)");
  }
}