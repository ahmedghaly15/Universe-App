class UserModel {
  String? email;
  String? username;
  String? uId;

  UserModel({
    this.email,
    this.uId,
    this.username,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    uId = json['uId'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'username': username,
      'uId': uId,
    };
  }
}
