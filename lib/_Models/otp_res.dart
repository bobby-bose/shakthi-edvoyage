class GenerateOTP {
  GenerateOTP({
    required this.code,
    required this.success,
    required this.message,
    required this.data,
    required this.token,
  });
  late final int code;
  late final bool success;
  late final String message;
  late final Data data;
  late final Token token;

  GenerateOTP.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    success = json['success'];
    message = json['message'];
    data = Data.fromJson(json['data']);
    token = Token.fromJson(json['token']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data.toJson();
    _data['token'] = token.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.username,
    this.scope,
  });
  late final int id;
  late final String username;
  late final Null scope;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    scope = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['username'] = username;
    _data['scope'] = scope;
    return _data;
  }
}

class Token {
  Token({
    required this.access,
    required this.refresh,
  });
  late final String access;
  late final String refresh;

  Token.fromJson(Map<String, dynamic> json) {
    access = json['access'];
    refresh = json['refresh'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['access'] = access;
    _data['refresh'] = refresh;
    return _data;
  }
}
