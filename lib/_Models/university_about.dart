class UniversityAbout {
  UniversityAbout({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final List<Data> data;

  UniversityAbout.fromJson(Map<String, dynamic> json) {
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
    required this.about,
    required this.ranking,
    required this.noOfProgram,
    required this.FMGE,
    required this.USML,
    required this.PLAB,
    required this.library,
    required this.accomodation,
    required this.classRooms,
    required this.laboratories,
    required this.clinic,
    required this.playGrount,
    required this.isShown,
    required this.isAttended,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.univesityName,
    required this.createdBy,
    this.updatedBy,
  });
  late final int id;
  late final String about;
  late final String ranking;
  late final int noOfProgram;
  late final bool FMGE;
  late final bool USML;
  late final bool PLAB;
  late final bool library;
  late final bool accomodation;
  late final bool classRooms;
  late final bool laboratories;
  late final bool clinic;
  late final bool playGrount;
  late final bool isShown;
  late final bool isAttended;
  late final bool isActive;
  late final bool isDeleted;
  late final String createdAt;
  late final String updatedAt;
  late final Null univesityName;
  late final int createdBy;
  late final Null updatedBy;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    about = json['about'];
    ranking = json['ranking'];
    noOfProgram = json['no_of_program'];
    FMGE = json['FMGE'];
    USML = json['USML'];
    PLAB = json['PLAB'];
    library = json['library'];
    accomodation = json['accomodation'];
    classRooms = json['class_rooms'];
    laboratories = json['laboratories'];
    clinic = json['clinic'];
    playGrount = json['play_grount'];
    isShown = json['is_shown'];
    isAttended = json['is_attended'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    univesityName = null;
    createdBy = json['created_by'];
    updatedBy = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['about'] = about;
    _data['ranking'] = ranking;
    _data['no_of_program'] = noOfProgram;
    _data['FMGE'] = FMGE;
    _data['USML'] = USML;
    _data['PLAB'] = PLAB;
    _data['library'] = library;
    _data['accomodation'] = accomodation;
    _data['class_rooms'] = classRooms;
    _data['laboratories'] = laboratories;
    _data['clinic'] = clinic;
    _data['play_grount'] = playGrount;
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
