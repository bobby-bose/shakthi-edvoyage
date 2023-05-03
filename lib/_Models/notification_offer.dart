class NotificationOffer {
  NotificationOffer({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final List<Data> data;

  NotificationOffer.fromJson(Map<String, dynamic> json) {
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
    required this.title,
    required this.message,
    required this.url,
    required this.isOffer,
    required this.isRead,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.createdBy,
    required this.updatedBy,
  });
  late final int id;
  late final String title;
  late final String message;
  late final String url;
  late final bool isOffer;
  late final bool isRead;
  late final bool isActive;
  late final bool isDeleted;
  late final String createdAt;
  late final String updatedAt;
  late final int user;
  late final int createdBy;
  late final int updatedBy;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    message = json['message'];
    url = json['url'];
    isOffer = json['is_offer'];
    isRead = json['is_read'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['message'] = message;
    _data['url'] = url;
    _data['is_offer'] = isOffer;
    _data['is_read'] = isRead;
    _data['is_active'] = isActive;
    _data['is_deleted'] = isDeleted;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['user'] = user;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    return _data;
  }
}
