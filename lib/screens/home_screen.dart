import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zylu_app/blocs/employee/employee_bloc.dart';

class HomeScreen extends StatefulWidget {
  final String? firstName, lastName, email, phoneNum, role, status;
  final double? id, salary;
  final DateTime? selectedDate;
  const HomeScreen(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNum,
      this.role,
      this.status,
      this.id,
      this.salary,
      this.selectedDate,
      super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<EmployeeBloc>(context).add(
      LoadEmployeesEvent(
        email: widget.email,
        firstName: widget.firstName,
        lastName: widget.lastName,
        role: widget.role,
        phoneNum: widget.phoneNum,
        salary: widget.salary,
        status: widget.status,
        id: widget.id,
        hiringDate: widget.selectedDate,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee List"),
      ),
      body: BlocConsumer<EmployeeBloc, EmployeeState>(
        listener: (context, state) {
          if (state is EmployeeLoadingState) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        builder: (context, state) {
          if (state is EmployeeLoadedState) {
            return ListView.builder(
                itemCount: state.employeeList!.length,
                itemBuilder: (context, index) {
                  final entity = state.employeeList![index];
                  final yearsWorked =
                      entity.calculateYearsOfExperience(entity.hiredDate!);

                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                      ),
                      child: ListTile(
                        tileColor: yearsWorked > 5 && entity.status == "working"
                            ? Colors.green
                            : Colors.white,
                        leading: CircleAvatar(
                          backgroundColor: Colors.indigo,
                          child: Text(
                            "${yearsWorked.toStringAsFixed(0)} yr",
                          ),
                        ),
                        title: Text(entity.name!),
                        subtitle: Text(entity.email!),
                      ),
                    ),
                  );
                });
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
          );
        },
      ),
    );
  }
}
