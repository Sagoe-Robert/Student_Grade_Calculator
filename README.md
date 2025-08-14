 UENR Grade Calculator (Dart)
A simple console application to compute a student's final grade using weighted scores and map it to a letter grade.

# File
- `grade_calculate.dart`

# Weights
- Continuous Assessment: 20%
- Project: 30%
- Exams: 50%

# Requirements
- Dart SDK installed (`dart --version` to verify). Download from `https://dart.dev/get-dart`.

# Run
From the project root:

```bash
dart run grade_calculate.dart
# or
dart grade_calculate.dart
```

# How to Use
- Enter student name (type `exit` to quit).
- Enter scores for Continuous Assessment, Project, and Exams (0–100). Inputs are validated.
- The program prints the weighted final score and letter grade, then asks if you want to process another student.

# Letter Grade Scale
- A (≥ 80), B+ (≥ 75), B (≥ 70), C+ (≥ 65), C (≥ 60), D+ (≥ 55), D (≥ 50), E (≥ 45), F (< 45)
