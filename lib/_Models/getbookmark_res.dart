class GetBookmark {
  GetBookmark({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final List<dynamic> data;

  GetBookmark.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = List.castFrom<dynamic, dynamic>(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data;
    return _data;
  }
}
