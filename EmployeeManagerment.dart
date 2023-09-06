import 'dart:io';
import 'Employee.dart';
class EmployeeManagerment{

  List<Employee> employees = [];

  void addNewEmployee() {
    String? id = stdin.readLineSync();
    String? fullName = stdin.readLineSync();
    String? birthday = stdin.readLineSync();
    String? address = stdin.readLineSync();
    String? phoneNumber = stdin.readLineSync();
    Employee employee = new Employee(id, fullName, birthday, address, phoneNumber);
    employees.add(employee);
  }

  List<Employee> getAllEmployee() {
    return employees;
  }

  void updateEmployee(int id) {
    for (int i = 0; i < employees.length; i++) {
      if (employees[i].id == id) {
        String? id = stdin.readLineSync();
        String? fullName = stdin.readLineSync();
        String? birthday = stdin.readLineSync();
        String? address = stdin.readLineSync();
        String? phoneNumber = stdin.readLineSync();
        Employee employee = new Employee(id, fullName, birthday, address, phoneNumber);
        employees[i] = employee;
        break;
      }
      else {
        print("Cannot find the Employee with this id");
      }
    }
  }
}