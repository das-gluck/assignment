

class EmployeeModel {
  int? empID;
  String? name;
  String? dOB;
  String? role;

  EmployeeModel({required this.empID, required this.name, required this.dOB, required this.role});

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    empID = json['Emp ID'];
    name = json['Name'];
    dOB = json['DOB'];
    role = json['Role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Emp ID'] = empID;
    data['Name'] = name;
    data['DOB'] = dOB;
    data['Role'] = role;
    return data;
  }
}