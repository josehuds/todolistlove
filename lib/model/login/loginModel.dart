// ignore: file_names
class LoginResponse {
  String? jwt;
  LoginUser? user;

  LoginResponse({this.jwt, this.user});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    jwt = json["jwt"];
    user = json["user"] == null ? null : LoginUser.fromJson(json["user"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["jwt"] = jwt;
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class LoginUser {
  int? id;
  String? username;
  String? email;

  LoginUser({this.id, this.username, this.email});

  LoginUser.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    username = json["username"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["email"] = email;
    return _data;
  }
}