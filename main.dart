import 'dart:io';

import 'Employee.dart';
import 'EmployeeManagerment.dart';

void main() {

  EmployeeManagement employeeManagement = EmployeeManagement();

  while (true) {
    print("Menu:");
    print("1. Add New Employee");
    print("2. Get All Employees");
    print("3. Update Employee");
    print("4. Show All Employees");
    print("5. Exit");
    stdout.write("Enter your choice (1/2/3/4/5): ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        employeeManagement.addNewEmployee();
        break;
      case '2':
        employeeManagement.showAllEmployee();
        break;
      case '3':
      print("Enter the Employee ID to update: ");
        var id = stdin.readLineSync();
        employeeManagement.updateEmployee(id);
        break;
      case '4':
        print("All Employee Information:");
        employeeManagement.showAllEmployee();
        break;
      case '5':
        exit(0);
      default:
        print("Invalid choice. Please select a valid option.");
    }
  }
}