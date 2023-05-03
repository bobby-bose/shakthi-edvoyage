class UniversityFeed {
  bool? success;
  String? message;
  List<Data>? data;

  UniversityFeed({this.success, this.message, this.data});

  UniversityFeed.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? feedTitle;
  String? feed;
  String? date;
  bool? isShown;
  bool? isAttended;
  bool? isActive;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? user;
  int? univesityName;
  int? createdBy;
  int? updatedBy;

  Data(
      {this.id,
      this.feedTitle,
      this.feed,
      this.date,
      this.isShown,
      this.isAttended,
      this.isActive,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.user,
      this.univesityName,
      this.createdBy,
      this.updatedBy});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    feedTitle = json['feed_title'];
    feed = json['feed'];
    date = json['date'];
    isShown = json['is_shown'];
    isAttended = json['is_attended'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'];
    univesityName = json['univesity_name'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['feed_title'] = this.feedTitle;
    data['feed'] = this.feed;
    data['date'] = this.date;
    data['is_shown'] = this.isShown;
    data['is_attended'] = this.isAttended;
    data['is_active'] = this.isActive;
    data['is_deleted'] = this.isDeleted;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['user'] = this.user;
    data['univesity_name'] = this.univesityName;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    return data;
  }
}
