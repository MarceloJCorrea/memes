class User {
  User(
      {required this.id,
       required this.name,
       required this.email,
       required this.phone,
       required  this.password,
       required this.createdAt,
       required this.isSocialLogin});

  String id;
  String name;
  String email;
  String phone;
  String password;
  DateTime createdAt;
  bool isSocialLogin = false;

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, phone: $phone, password: $password, createdAt: $createdAt, isSocialLogin : $isSocialLogin}';
  }

  User copyWith(
      {required String email,
       required String password,
       required String name,
       required String phone,
       required bool isSocialLogin}) {
    return User(
      id: id,
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      createdAt: createdAt,
      isSocialLogin: isSocialLogin,
    );
  }
}
