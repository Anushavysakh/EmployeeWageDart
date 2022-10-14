import 'dart:math';

void main(List<String> args) {
  // int IS_FULL_TIME = 1;
  int EMP_RATE_PER_HOUR = 20;
  int noOfDays = 20;
  int empHrs = 0;
  int empWage = 0, totalEmpWage = 0;

  for (int day = 0; day <= noOfDays; day++) {
      Random number = Random();
      var empCheck = number.nextInt(3);

    switch (empCheck) {
      case 0:
        empHrs = 0;
        print(" Absent , employee hours :${empHrs}");
        break;
      case 1:
        empHrs = 8;
        print(" Present-fulltime , employee hours :${empHrs}");

        break;
      default:
        empHrs = 4;
        print(" Present-parttime , employee hours :${empHrs}");

        break;
    }
    empWage = empHrs * EMP_RATE_PER_HOUR;
    totalEmpWage += empWage;
  }

  print("Total Employee Wage =  ${totalEmpWage}");
}
