import 'dart:io';

double getScore(String scoreType) {
  while (true) {
    stdout.write('Enter $scoreType score (0-100): ');
    String? input = stdin.readLineSync();
    if (input == null || input.trim().isEmpty) {
        print('Error: Input cannot be empty.');
        continue;
    }
    try {
      double score = double.parse(input.trim());
      if (score >= 0 && score <= 100) {
        return score;
      } else {
        print('Error: Score must be between 0 and 100.');
      }
    } catch (e) {
      print('Error: Invalid input. Please enter a valid number.');
    }
  }
}

double calculateFinalScore(double continuousAssessment, double projectScore, double examScore) {
  return (continuousAssessment * 0.20) + (projectScore * 0.30) + (examScore * 0.50);
}

String getLetterGrade(double finalScore) {
  if (finalScore >= 80) return 'A';
  if (finalScore >= 75) return 'B+';
  if (finalScore >= 70) return 'B';
  if (finalScore >= 65) return 'C+';
  if (finalScore >= 60) return 'C';
  if (finalScore >= 55) return 'D+';
  if (finalScore >= 50) return 'D';
  if (finalScore >= 45) return 'E';
  return 'F';
}

void main() {
  print('--- UENR Grade Calculator ---');
 
  while (true) {
    stdout.write('\nEnter student\'s name (or type "exit" to quit): ');
    String? studentName = stdin.readLineSync();

    if (studentName == null || studentName.trim().isEmpty) {
      print('Student name cannot be empty.');
      continue;
    }
    
    if (studentName.trim().toLowerCase() == 'exit') {
        print('\nExiting program. Goodbye!');
        break;
    }

    double continuousAssessment = getScore('Continuous Assessment');
    double projectScore = getScore('Project');
    double examScore = getScore('Exams');

    double finalScore = calculateFinalScore(continuousAssessment, projectScore, examScore);
    String letterGrade = getLetterGrade(finalScore);

    print(' Grade Summary for $studentName ');
    print('=====================================');
    print('Continuous Assessment: ${continuousAssessment.toStringAsFixed(1)}');
    print('Project Score:         ${projectScore.toStringAsFixed(1)}');
    print('Exams Score:           ${examScore.toStringAsFixed(1)}');
    print('-------------------------------------');
    print('Final Weighted Score:  ${finalScore.toStringAsFixed(2)}%');
    print('Letter Grade:          $letterGrade');
   
    stdout.write('\nDo you want to calculate for another student? (yes/no): ');
    String? response = stdin.readLineSync()?.trim().toLowerCase();
    if (response != 'yes' && response != 'y') {
      print('\nExiting program. All calculations complete.');
      break;
    }
  }
}

