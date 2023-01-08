import 'package:zylu_app/models/employee.dart';
import 'package:zylu_app/services/firebase_service.dart';

class CreateEmployee {
  static FirebaseClient firebaseService = FirebaseClient();

  static void createEmployee(
      String firstName,
      String lastName,
      double id,
      String email,
      String role,
      DateTime hiringDate,
      String phoneNum,
      double salary,
      String status) {
    Employee employee = Employee(
        id: id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        role: role,
        hireDate: hiringDate,
        phoneNum: phoneNum,
        currentStatus: status,
        salary: salary);
    firebaseService.addEmployee(employee);
  }
}
