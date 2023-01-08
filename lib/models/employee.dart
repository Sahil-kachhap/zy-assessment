class Employee {
  final double? id;
  final String? firstName, lastName;
  final DateTime? hireDate;
  final String? email;
  final String? role;
  final String? phoneNum;
  final String? currentStatus;
  final double? salary;

  Employee(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.role,
      this.hireDate,
      this.phoneNum,
      this.currentStatus,
      this.salary});

  Map<String, dynamic> toJson() => {
        'employee_id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'role': role,
        'phone_number': phoneNum,
        'salary': salary,
        'status': currentStatus,
        'hire_date': hireDate.toString(),
      };

  static Employee fromJson(Map<String, dynamic> json) => Employee(
      id: json['employee_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      role: json['role'],
      hireDate: DateTime.parse(json['hire_date']),
      phoneNum: json['phone_number'],
      currentStatus: json['status'],
      salary: json['salary']);
}
