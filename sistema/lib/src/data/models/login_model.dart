class LoginModel {
  final int id;
  final String username;
  final String password;

  LoginModel({required this.id, required this.username, required this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
    };
  }

  static LoginModel fromMap(Map<String, dynamic> map) {
    return LoginModel(
      id: map['id'],
      username: map['username'],
      password: map['password'],
    );
  }
}
