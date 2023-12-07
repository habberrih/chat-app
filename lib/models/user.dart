class User {
  final int id;
  final String name;
  final String? mobile;
  final String? birthday;
  final String? gender;

  User({
    required this.id,
    required this.name,
    required this.mobile,
    required this.birthday,
    required this.gender,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        mobile: json['mobile'],
        birthday: json['birthday'],
        gender: json['gender'],
      );
}
