class LoginRequest {
  String? provider;
  String? username;
  String? password;
  String? twoFactorMethod;

  LoginRequest(
      {this.provider, this.username, this.password, this.twoFactorMethod});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    username = json['username'];
    password = json['password'];
    twoFactorMethod = json['two_factor_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['provider'] = this.provider;
    data['username'] = this.username;
    data['password'] = this.password;
    data['two_factor_method'] = this.twoFactorMethod;
    return data;
  }
}
