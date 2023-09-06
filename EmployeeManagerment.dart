import 'dart:io';
import 'Employee.dart';
class EmployeeManagerment{

  List<Employee> employees = [];

  void addNewEmployee() {
    var id = stdin.readLineSync();
    var fullName = stdin.readLineSync();
    var birthday = stdin.readLineSync();
    var address = stdin.readLineSync();
    var phoneNumber = stdin.readLineSync();
    Employee employee = new Employee(id.toString(), fullName.toString(), birthday.toString(), address.toString(), phoneNumber.toString());
    employees.add(employee);
  }

  List<Employee> getAllEmployee() {
    return employees;
  }

  void updateEmployee(int id) {
    for (int i = 0; i < employees.length; i++) {
      if (employees[i].id == id) {
        var id = stdin.readLineSync();
      var fullName = stdin.readLineSync();
      var birthday = stdin.readLineSync();
      var address = stdin.readLineSync();
      var phoneNumber = stdin.readLineSync();
      Employee employee = new Employee(id.toString(), fullName.toString(), birthday.toString(), address.toString(), phoneNumber.toString());
        employees[i] = employee;
        break;
      }
      else {
        print("Cannot find the Employee with this id");
      }
    }
  }
}