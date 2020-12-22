import 'dart:convert';

class UserModel {
  final String user;
  final String name;
  final String password;
  final String typeuser;
  UserModel({
    this.user,
    this.name,
    this.password,
    this.typeuser,
  });

  UserModel copyWith({
    String user,
    String name,
    String password,
    String typeuser,
  }) {
    return UserModel(
      user: user ?? this.user,
      name: name ?? this.name,
      password: password ?? this.password,
      typeuser: typeuser ?? this.typeuser,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'name': name,
      'password': password,
      'typeuser': typeuser,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      user: map['user'],
      name: map['name'],
      password: map['password'],
      typeuser: map['typeuser'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(user: $user, name: $name, password: $password, typeuser: $typeuser)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserModel &&
        o.user == user &&
        o.name == name &&
        o.password == password &&
        o.typeuser == typeuser;
  }

  @override
  int get hashCode {
    return user.hashCode ^
        name.hashCode ^
        password.hashCode ^
        typeuser.hashCode;
  }
}
