import 'dart:io';
import 'Employee.dart';
class EmployeeManagerment{

  List<Employee> employees = [];

  void addNewEmployee() {
    print("Enter id: ");
    var id = stdin.readLineSync();
    print("Enter fullName: ");
    var fullName = stdin.readLineSync();
    print("Enter birthday: ");
    var birthday = stdin.readLineSync();
    print("Enter address: ");
    var address = stdin.readLineSync();
    print("Enter phonenumber: ");
    var phoneNumber = stdin.readLineSync();
    Employee employee = new Employee(id.toString(), fullName.toString(), birthday.toString(), address.toString(), phoneNumber.toString());
    employees.add(employee);
  }

  void getAllEmployee() {
    for (var employee in employees) {
      print('ID: ${employee.id}');
      print('Full Name: ${employee.fullName}');
      print('Birthday: ${employee.birthday}');
      print('Address: ${employee.address}');
      print('Phone Number: ${employee.phoneNumber}');
      print('------------');
    }
  }

  void updateEmployee(String id) {
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