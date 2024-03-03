class LoginModel {
  bool? status;
  String? message;
  UserData? data;

  LoginModel.fromJson(Map<String,dynamic> json)
  {
    status = json['status'];
    message = json['message'];
    data = (json['data'] != null ? UserData.fromJson(json['data']) : null);
  }
}

class UserData {
  String? name;
  String? email;
  String? phone;
  int? id;
  String? image;
  String? token;

  /*UserData ({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.points,
    required this.credit,
    required this.token,
});*/

  //named constructor
  UserData.fromJson(Map<String,dynamic> json)
  {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    token = json['token'];
  }

}
