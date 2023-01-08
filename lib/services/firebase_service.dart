import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zylu_app/models/employee.dart';

class FirebaseClient{
  final CollectionReference _collectionReference = FirebaseFirestore.instance.collection('employees');

  void addEmployee(Employee employee) async{
    final employeeJson = employee.toJson();
    await _collectionReference.doc().set(employeeJson);
  }

  Future<List<Employee>> readEmployee() async{
    return await _collectionReference.get().then((data) => data.docs.map((doc) => Employee.fromJson(doc.data() as Map<String, dynamic>)).toList());
  }
}