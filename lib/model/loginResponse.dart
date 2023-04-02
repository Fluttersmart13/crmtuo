class LoginResponse {
  User? user;
  String? mode;
  List<Organisations>? organisations;
  String? accessToken;
  String? refreshToken;
  int? expirationDate;
  bool? passwordExpired;
  String? lockoutDate;
  bool? twoFactorRequired;
  TwoFactorMethods? twoFactorMethods;
  String? passwordNotification;

  LoginResponse(
      {this.user,
      this.mode,
      this.organisations,
      this.accessToken,
      this.refreshToken,
      this.expirationDate,
      this.passwordExpired,
      this.lockoutDate,
      this.twoFactorRequired,
      this.twoFactorMethods,
      this.passwordNotification});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    mode = json['mode'];
    if (json['organisations'] != null) {
      organisations = <Organisations>[];
      json['organisations'].forEach((v) {
        organisations!.add(new Organisations.fromJson(v));
      });
    }
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    expirationDate = json['expiration_date'];
    passwordExpired = json['password_expired'];
    lockoutDate = json['lockout_date'];
    twoFactorRequired = json['two_factor_required'];
    twoFactorMethods = json['two_factor_methods'] != null
        ? new TwoFactorMethods.fromJson(json['two_factor_methods'])
        : null;
    passwordNotification = json['password_notification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['mode'] = this.mode;
    if (this.organisations != null) {
      data['organisations'] =
          this.organisations!.map((v) => v.toJson()).toList();
    }
    data['access_token'] = this.accessToken;
    data['refresh_token'] = this.refreshToken;
    data['expiration_date'] = this.expirationDate;
    data['password_expired'] = this.passwordExpired;
    data['lockout_date'] = this.lockoutDate;
    data['two_factor_required'] = this.twoFactorRequired;
    if (this.twoFactorMethods != null) {
      data['two_factor_methods'] = this.twoFactorMethods!.toJson();
    }
    data['password_notification'] = this.passwordNotification;
    return data;
  }
}

class User {
  String? email;
  String? firstName;
  String? lastName;
  bool? isOwner;
  int? signUpDate;

  User(
      {this.email,
      this.firstName,
      this.lastName,
      this.isOwner,
      this.signUpDate});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    isOwner = json['is_owner'];
    signUpDate = json['sign_up_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['is_owner'] = this.isOwner;
    data['sign_up_date'] = this.signUpDate;
    return data;
  }
}

class Organisations {
  String? name;
  String? type;
  String? status;
  String? id;

  Organisations({this.name, this.type, this.status, this.id});

  Organisations.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    status = json['status'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['status'] = this.status;
    data['id'] = this.id;
    return data;
  }
}

class TwoFactorMethods {
  String? options;
  String? sendMethod;

  TwoFactorMethods({this.options, this.sendMethod});

  TwoFactorMethods.fromJson(Map<String, dynamic> json) {
    options = json['options'];
    sendMethod = json['send_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['options'] = this.options;
    data['send_method'] = this.sendMethod;
    return data;
  }
}
