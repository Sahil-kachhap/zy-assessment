part of 'employee_bloc.dart';

abstract class EmployeeEvent {}

class LoadEmployeesEvent extends EmployeeEvent {
  String? firstName;
  String? lastName;
  double? id;
  String? email;
  String? role;
  DateTime? hiringDate;
  String? phoneNum;
  double? salary;
  String? status;

  LoadEmployeesEvent(
      {this.email,
      this.firstName,
      this.hiringDate,
      this.id,
      this.lastName,
      this.phoneNum,
      this.role,
      this.salary,
      this.status});
}
