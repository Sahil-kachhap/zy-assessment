import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zylu_app/screens/employee_form_screen.dart';
import 'package:zylu_app/screens/home_screen.dart';

import 'blocs/employee/employee_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zylu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const EmployeeForm(),
      ),
    );
  }
}
