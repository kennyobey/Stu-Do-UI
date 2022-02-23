import 'dart:convert';

class UserModel {
  UserModel({
    this.firstName,
    this.lastName,
    this.email,
    this.department,
    this.faculty,
    this.level,
  });

  String? firstName;
  String? lastName;
  String? email;
  String? department;
  String? faculty;
  String? level;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        department: json["department"],
        faculty: json["faculty"],
        level: json["level"],
      );

  toJson() => json.encode({
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "department": department,
        "faculty": faculty,
        "level": level,
      });
}
