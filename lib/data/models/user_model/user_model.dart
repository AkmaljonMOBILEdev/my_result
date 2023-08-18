class UserModel {
  final String firstname;
  final String lastname;
  final String age;
  final String userId;
  final String fcm;
  final String createdDate;
  final String userRole;

  UserModel({
    required this.firstname,
    required this.lastname,
    required this.age,
    required this.userId,
    required this.fcm,
    required this.createdDate,
    required this.userRole,
  });

  UserModel copyWith({
    String? firstname,
    String? lastname,
    String? age,
    String? userId,
    String? fcm,
    String? createdDate,
    String? userRole,
  }) {
    return UserModel(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      age: age ?? this.age,
      userId: userId ?? this.userId,
      fcm: fcm ?? this.fcm,
      createdDate: createdDate ?? this.createdDate,
      userRole: userRole ?? this.userRole,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      firstname: jsonData['firstname'] ?? "",
      lastname: jsonData['lastname'] ?? "",
      age: jsonData['age'] ?? "",
      userId: jsonData['userId'] ?? "",
      fcm: jsonData['fcm'] ?? "",
      createdDate: jsonData['createdDate'] ?? "",
      userRole: jsonData['userRole'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'age': age,
      'userId': userId,
      'fcm': fcm,
      'createdDate': createdDate,
      'userRole': userRole,
    };
  }

  @override
  String toString() {
    return ''''
       firstname : $firstname,
       lastname : $lastname,
       age : $age,
       userId : $userId,
       fcm : $fcm,
       createdDate : $createdDate,
       userRole : $userRole, 
      ''';
  }

}
