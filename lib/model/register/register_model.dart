
class RegisterModel {
  String? jwt;
  RegisterUser? user;

  RegisterModel({this.jwt, this.user});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    jwt = json["jwt"];
    user = json["user"] == null ? null : RegisterUser.fromJson(json["user"]);
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

class RegisterUser {
  int? id;
  String? username;
  String? email;

  RegisterUser({this.id, this.username, this.email});

  RegisterUser.fromJson(Map<String, dynamic> json) {
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