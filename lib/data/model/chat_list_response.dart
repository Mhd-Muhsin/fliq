class ChatListResponse {
  ChatListResponse({
    required this.data,
    required this.meta,
    required this.links,
  });

  final List<Datum> data;
  final Meta? meta;
  final Links? links;

  factory ChatListResponse.fromJson(Map<String, dynamic> json){
    return ChatListResponse(
      data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      links: json["links"] == null ? null : Links.fromJson(json["links"]),
    );
  }

}

class Datum {
  Datum({
    required this.type,
    required this.id,
    required this.attributes,
  });

  final String? type;
  final String? id;
  final Attributes? attributes;

  factory Datum.fromJson(Map<String, dynamic> json){
    return Datum(
      type: json["type"],
      id: json["id"],
      attributes: json["attributes"] == null ? null : Attributes.fromJson(json["attributes"]),
    );
  }

}

class Attributes {
  Attributes({
    required this.messageReceivedFromPartnerAt,
    required this.authUserId,
    required this.name,
    required this.username,
    required this.email,
    required this.profilePhotoPath,
    required this.profilePhotoId,
    required this.phone,
    required this.gender,
    required this.countryId,
    required this.countryName,
    required this.stateId,
    required this.stateName,
    required this.cityId,
    required this.cityName,
    required this.customCityName,
    required this.isActive,
    required this.customerCode,
    required this.isPremiumCustomer,
    required this.isOnline,
    required this.bioIntroText,
    required this.lastActiveAt,
    required this.dateOfBirth,
    required this.nativeLanguageId,
    required this.nativeLanguageName,
    required this.profilePhotoUrl,
    required this.square100ProfilePhotoUrl,
    required this.square300ProfilePhotoUrl,
    required this.square500ProfilePhotoUrl,
    required this.age,
  });

  final DateTime? messageReceivedFromPartnerAt;
  final int? authUserId;
  final String? name;
  final String? username;
  final String? email;
  final dynamic profilePhotoPath;
  final dynamic profilePhotoId;
  final String? phone;
  final String? gender;
  final int? countryId;
  final String? countryName;
  final dynamic stateId;
  final dynamic stateName;
  final dynamic cityId;
  final dynamic cityName;
  final dynamic customCityName;
  final bool? isActive;
  final String? customerCode;
  final bool? isPremiumCustomer;
  final bool? isOnline;
  final dynamic bioIntroText;
  final dynamic lastActiveAt;
  final DateTime? dateOfBirth;
  final int? nativeLanguageId;
  final String? nativeLanguageName;
  final String? profilePhotoUrl;
  final String? square100ProfilePhotoUrl;
  final String? square300ProfilePhotoUrl;
  final String? square500ProfilePhotoUrl;
  final int? age;

  factory Attributes.fromJson(Map<String, dynamic> json){
    return Attributes(
      messageReceivedFromPartnerAt: DateTime.tryParse(json["message_received_from_partner_at"] ?? ""),
      authUserId: json["auth_user_id"],
      name: json["name"],
      username: json["username"],
      email: json["email"],
      profilePhotoPath: json["profile_photo_path"],
      profilePhotoId: json["profile_photo_id"],
      phone: json["phone"],
      gender: json["gender"],
      countryId: json["country_id"],
      countryName: json["country_name"],
      stateId: json["state_id"],
      stateName: json["state_name"],
      cityId: json["city_id"],
      cityName: json["city_name"],
      customCityName: json["custom_city_name"],
      isActive: json["is_active"],
      customerCode: json["customer_code"],
      isPremiumCustomer: json["is_premium_customer"],
      isOnline: json["is_online"],
      bioIntroText: json["bio_intro_text"],
      lastActiveAt: json["last_active_at"],
      dateOfBirth: DateTime.tryParse(json["date_of_birth"] ?? ""),
      nativeLanguageId: json["native_language_id"],
      nativeLanguageName: json["native_language_name"],
      profilePhotoUrl: json["profile_photo_url"],
      square100ProfilePhotoUrl: json["square100_profile_photo_url"],
      square300ProfilePhotoUrl: json["square300_profile_photo_url"],
      square500ProfilePhotoUrl: json["square500_profile_photo_url"],
      age: json["age"],
    );
  }

}

class Links {
  Links({
    required this.self,
    required this.first,
    required this.last,
  });

  final String? self;
  final String? first;
  final String? last;

  factory Links.fromJson(Map<String, dynamic> json){
    return Links(
      self: json["self"],
      first: json["first"],
      last: json["last"],
    );
  }

}

class Meta {
  Meta({
    required this.pagination,
  });

  final Pagination? pagination;

  factory Meta.fromJson(Map<String, dynamic> json){
    return Meta(
      pagination: json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]),
    );
  }

}

class Pagination {
  Pagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.totalPages,
  });

  final int? total;
  final int? count;
  final int? perPage;
  final int? currentPage;
  final int? totalPages;

  factory Pagination.fromJson(Map<String, dynamic> json){
    return Pagination(
      total: json["total"],
      count: json["count"],
      perPage: json["per_page"],
      currentPage: json["current_page"],
      totalPages: json["total_pages"],
    );
  }

}
