part of 'employee_bloc.dart';

abstract class EmployeeState {}

class EmployeeInitialState extends EmployeeState {}

class EmployeeLoadingState extends EmployeeState {}

class EmployeeNavigateState extends EmployeeState{}

class EmployeeLoadedState extends EmployeeState{
  final List<EmployeeEntity>? employeeList;

  EmployeeLoadedState({required this.employeeList});
}