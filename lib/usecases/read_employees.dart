import 'package:zylu_app/models/employee.dart';
import 'package:zylu_app/services/firebase_service.dart';

class ReadEmployees{
    static FirebaseClient firebaseService = FirebaseClient();
    
    static Future<List<Employee>> readEmployees() async{
       return await firebaseService.readEmployee();
    }
}