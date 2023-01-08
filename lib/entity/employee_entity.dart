class EmployeeEntity {
  final String? name;
  final String? email;
  final DateTime? hiredDate;
  final String status;

  EmployeeEntity(this.name, this.email, this.hiredDate, this.status);

  double calculateYearsOfExperience(DateTime date) {
    return (DateTime.now().difference(hiredDate!).inDays) / 365;
  }
}
