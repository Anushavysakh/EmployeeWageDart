import 'dart:math';

void main(List<String> args) {
  int IS_FULL_TIME = 1;
  int EMP_RATE_PER_HOUR = 20;
  int empHrs = 0;
  int empWage = 0;
  Random number = Random();
  int empCheck = number.nextInt(3);

  if (empCheck == 0) {
    print("Employee Absent..");
    empHrs = 0;
  } else if (empCheck == IS_FULL_TIME) {
    print("Employee Present and full-time employee");
    empHrs = 8;
  } else {
    print("Employee Present and part-time employee");
    empHrs = 4;
  }
  empWage = empHrs * EMP_RATE_PER_HOUR;
  print("Daily wage of employee = ${empWage}");
}
