import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zylu_app/entity/employee_entity.dart';
import 'package:zylu_app/models/employee.dart';
import 'package:zylu_app/usecases/create_employee.dart';
import 'package:zylu_app/usecases/read_employees.dart';

part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(EmployeeInitialState()) {
    on<LoadEmployeesEvent>((event, emit) async{
      emit(EmployeeLoadingState());
      CreateEmployee.createEmployee(event.firstName!,event.lastName!,event.id!,event.email!,event.role!,event.hiringDate!,event.phoneNum!,event.salary!,event.status!,);
      List<Employee> employees = await ReadEmployees.readEmployees();
      List<EmployeeEntity> entityList = employees.map((emp) => EmployeeEntity(emp.firstName, emp.email!, emp.hireDate!, emp.currentStatus!)).toList();
      emit(EmployeeLoadedState(employeeList: entityList),);
    });
  }
}
