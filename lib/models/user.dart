class UserModel {
  String? id;
  String? username;
  String? email;
  String? language;

  UserModel({this.id, this.username, this.email, this.language});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['language'] = this.language;
    return data;
  }
}
