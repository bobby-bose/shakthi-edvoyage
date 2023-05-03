class PostLike {
  PostLike({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final Data data;

  PostLike.fromJson(Map<String, dynamic> json) {
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
    required this.modelName,
    required this.user,
    required this.blogId,
    required this.isLiked,
    required this.isAttended,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    this.updatedBy,
  });
  late final int id;
  late final String modelName;
  late final String user;
  late final String blogId;
  late final bool isLiked;
  late final bool isAttended;
  late final bool isActive;
  late final bool isDeleted;
  late final String createdAt;
  late final String updatedAt;
  late final int createdBy;
  late final Null updatedBy;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    modelName = json['model_name'];
    user = json['user'];
    blogId = json['blog_id'];
    isLiked = json['is_liked'];
    isAttended = json['is_attended'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['model_name'] = modelName;
    _data['user'] = user;
    _data['blog_id'] = blogId;
    _data['is_liked'] = isLiked;
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
