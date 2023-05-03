class MCQinitialget {
  MCQinitialget({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final List<Data> data;

  MCQinitialget.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.question,
    required this.option_1,
    required this.option_2,
    required this.option_3,
    required this.option_4,
    required this.answer,
    required this.isShown,
    required this.isAttended,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });
  late final int id;
  late final String question;
  late final String option_1;
  late final String option_2;
  late final String option_3;
  late final String option_4;
  late final String answer;
  late final bool isShown;
  late final bool isAttended;
  late final bool isActive;
  late final bool isDeleted;
  late final String createdAt;
  late final String updatedAt;
  late final int? createdBy;
  late final int? updatedBy;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    option_1 = json['option_1'];
    option_2 = json['option_2'];
    option_3 = json['option_3'];
    option_4 = json['option_4'];
    answer = json['answer'];
    isShown = json['is_shown'];
    isAttended = json['is_attended'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = null;
    updatedBy = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['question'] = question;
    _data['option_1'] = option_1;
    _data['option_2'] = option_2;
    _data['option_3'] = option_3;
    _data['option_4'] = option_4;
    _data['answer'] = answer;
    _data['is_shown'] = isShown;
    _data['is_attended'] = isAttended;
    _data['is_active'] = isActive;
    _data['is_deleted'] = isDeleted;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    return _data;
  }
}
