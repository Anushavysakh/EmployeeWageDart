import 'dart:math';

void main(List<String> args) {
 // int IS_FULL_TIME = 1;
  int EMP_RATE_PER_HOUR = 20;
  int empHrs = 0;
  int empWage = 0;
  Random number = Random();
  int empCheck = number.nextInt(3);

  switch (empCheck) {
    case 0:
      print("Employee Absent..");
      empHrs = 0;
      break;
    case 1:
      print("Employee Present and full-time employee");
      empHrs = 8;
      break;
    default:
     print("Employee Present and part-time employee");
     empHrs = 4;
     break;
  }

  empWage = empHrs * EMP_RATE_PER_HOUR;
  print("Daily wage of employee = ${empWage}");
}
