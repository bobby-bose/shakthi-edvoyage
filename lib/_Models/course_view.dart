class CourseView {
  CourseView({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final List<Data> data;

  CourseView.fromJson(Map<String, dynamic> json) {
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
    required this.courseName,
    required this.location,
    required this.courseDuration,
    required this.intake,
    required this.bookmark,
    required this.fees_1,
    required this.fees_2,
    required this.fees_3,
    required this.fees_4,
    required this.fees_5,
    required this.fees_6,
    required this.neet,
    required this.ielts,
    required this.passport,
    required this.tenthCert,
    required this.twelvethCert,
    required this.visa,
    required this.remarks,
    required this.url,
    required this.code,
    required this.isShown,
    required this.isAttended,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.univesityName,
    required this.createdBy,
    this.updatedBy,
  });
  late final int id;
  late final String courseName;
  late final String location;
  late final String courseDuration;
  late final String intake;
  late final bool bookmark;
  late final String fees_1;
  late final String fees_2;
  late final String fees_3;
  late final String fees_4;
  late final String fees_5;
  late final String fees_6;
  late final bool neet;
  late final bool ielts;
  late final bool passport;
  late final bool tenthCert;
  late final bool twelvethCert;
  late final bool visa;
  late final String remarks;
  late final String url;
  late final String code;
  late final bool isShown;
  late final bool isAttended;
  late final bool isActive;
  late final bool isDeleted;
  late final String createdAt;
  late final String updatedAt;
  late final int univesityName;
  late final int createdBy;
  late final int? updatedBy;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseName = json['course_name'];
    location = json['location'];
    courseDuration = json['course_duration'];
    intake = json['intake'];
    bookmark = json['bookmark'];
    fees_1 = json['fees_1'];
    fees_2 = json['fees_2'];
    fees_3 = json['fees_3'];
    fees_4 = json['fees_4'];
    fees_5 = json['fees_5'];
    fees_6 = json['fees_6'];
    neet = json['neet'];
    ielts = json['ielts'];
    passport = json['passport'];
    tenthCert = json['tenth_cert'];
    twelvethCert = json['twelveth_cert'];
    visa = json['visa'];
    remarks = json['remarks'];
    url = json['url'];
    code = json['code'];
    isShown = json['is_shown'];
    isAttended = json['is_attended'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    univesityName = json['univesity_name'];
    createdBy = json['created_by'];
    updatedBy = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['course_name'] = courseName;
    _data['location'] = location;
    _data['course_duration'] = courseDuration;
    _data['intake'] = intake;
    _data['bookmark'] = bookmark;
    _data['fees_1'] = fees_1;
    _data['fees_2'] = fees_2;
    _data['fees_3'] = fees_3;
    _data['fees_4'] = fees_4;
    _data['fees_5'] = fees_5;
    _data['fees_6'] = fees_6;
    _data['neet'] = neet;
    _data['ielts'] = ielts;
    _data['passport'] = passport;
    _data['tenth_cert'] = tenthCert;
    _data['twelveth_cert'] = twelvethCert;
    _data['visa'] = visa;
    _data['remarks'] = remarks;
    _data['url'] = url;
    _data['code'] = code;
    _data['is_shown'] = isShown;
    _data['is_attended'] = isAttended;
    _data['is_active'] = isActive;
    _data['is_deleted'] = isDeleted;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['univesity_name'] = univesityName;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    return _data;
  }
}
