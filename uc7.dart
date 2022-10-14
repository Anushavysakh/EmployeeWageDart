import 'dart:math';

class EmployeeWage {
  int EMP_RATE_PER_HOUR = 20;
  int MAX_HRS_IN_MONTH = 100;
  int noOfDays = 20;
  int empHrs = 0;
  int empWage = 0, totalEmpWage = 0;
  Random number = Random();
  var totalWorkingDays = 0;
  int totalEmpHrs = 0;
  int employeeWage() {
    while (totalWorkingDays < noOfDays && totalEmpHrs <= MAX_HRS_IN_MONTH) {
      var empCheck = number.nextInt(3);

      switch (empCheck) {
        case 0:
          empHrs = 0;
          print(" Absent, employee hours :${empHrs}");
          break;
        case 1:
          empHrs = 8;
          print(" Present-fulltime, employee hours :${empHrs}");

          break;
        default:
          empHrs = 4;
          print(" Present-parttime, employee hours :${empHrs}");

          break;
      }
      empWage = empHrs * EMP_RATE_PER_HOUR;
      totalEmpWage += empWage;
      totalWorkingDays++;
      totalEmpHrs += empHrs;
    }

    return totalEmpWage;
  }
}

void main(List<String> args) {
  EmployeeWage emp = new EmployeeWage();
  int totalWage = emp.employeeWage();
  print("TOtal employee wage = ${totalWage}");
}
