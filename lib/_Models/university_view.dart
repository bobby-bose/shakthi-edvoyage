class UniversityView {
  UniversityView({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final Data data;

  UniversityView.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.univesityName,
    required this.location,
    required this.establishedYear,
    required this.ranking,
    required this.bookmark,
    required this.contry,
    required this.type,
    required this.code,
    required this.remarks,
    required this.url,
    required this.isShown,
    required this.isAttended,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });
  late final int id;
  late final String univesityName;
  late final String location;
  late final String establishedYear;
  late final String ranking;
  late final bool bookmark;
  late final String contry;
  late final String type;
  late final String code;
  late final String remarks;
  late final String url;
  late final bool isShown;
  late final bool isAttended;
  late final bool isActive;
  late final bool isDeleted;
  late final String createdAt;
  late final String updatedAt;
  late final int createdBy;
  late final int updatedBy;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    univesityName = json['univesity_name'];
    location = json['location'];
    establishedYear = json['established_year'];
    ranking = json['ranking'];
    bookmark = json['bookmark'];
    contry = json['contry'];
    type = json['type'];
    code = json['code'];
    remarks = json['remarks'];
    url = json['url'];
    isShown = json['is_shown'];
    isAttended = json['is_attended'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['univesity_name'] = univesityName;
    _data['location'] = location;
    _data['established_year'] = establishedYear;
    _data['ranking'] = ranking;
    _data['bookmark'] = bookmark;
    _data['contry'] = contry;
    _data['type'] = type;
    _data['code'] = code;
    _data['remarks'] = remarks;
    _data['url'] = url;
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
