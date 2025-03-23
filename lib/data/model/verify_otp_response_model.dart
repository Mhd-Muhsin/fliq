class VerifyOtpResponse {
  VerifyOtpResponse({
    required this.data,
    required this.included,
  });

  final Data? data;
  final List<Included> included;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json){
    return VerifyOtpResponse(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      included: json["included"] == null ? [] : List<Included>.from(json["included"]!.map((x) => Included.fromJson(x))),
    );
  }

}

class Data {
  Data({
    required this.type,
    required this.id,
    required this.attributes,
    required this.relationships,
  });

  final String? type;
  final String? id;
  final DataAttributes? attributes;
  final DataRelationships? relationships;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      type: json["type"],
      id: json["id"],
      attributes: json["attributes"] == null ? null : DataAttributes.fromJson(json["attributes"]),
      relationships: json["relationships"] == null ? null : DataRelationships.fromJson(json["relationships"]),
    );
  }

}

class DataAttributes {
  DataAttributes({
    required this.name,
    required this.username,
    required this.email,
    required this.emailVerifiedAt,
    required this.currentTeamId,
    required this.profilePhotoPath,
    required this.profilePhotoId,
    required this.dateOfBirth,
    required this.phone,
    required this.gender,
    required this.countryId,
    required this.countryName,
    required this.stateId,
    required this.stateName,
    required this.cityId,
    required this.cityName,
    required this.customCityName,
    required this.address,
    required this.zip,
    required this.isActive,
    required this.coinBalance,
    required this.customerCode,
    required this.isPremiumCustomer,
    required this.isOnline,
    required this.isProfilePreferencesCompleted,
    required this.profileCompletionPercentage,
    required this.isInstagramConnected,
    required this.preferredGender,
    required this.selfieVerificationImagePath,
    required this.selfieVerificationImageId,
    required this.selfieVerificationVideoPath,
    required this.selfieVerificationVideoId,
    required this.selfieVerificationUploadedAt,
    required this.selfieImageApprovedAt,
    required this.selfieImageApprovedBy,
    required this.selfieVideoApprovedAt,
    required this.selfieVideoApprovedBy,
    required this.accountVerifiedAt,
    required this.remainingSwipeLimit,
    required this.resetSwipeLimitAt,
    required this.remainingSuperLikeLimit,
    required this.resetSuperLikeLimitAt,
    required this.remainingFlashMessageLimit,
    required this.resetFlashMessageLimitAt,
    required this.remainingBoostLimit,
    required this.resetBoostLimitAt,
    required this.currentLocation,
    required this.currentLatitude,
    required this.currentLongitude,
    required this.bioIntroText,
    required this.heightInCm,
    required this.lastActiveAt,
    required this.zodiacSignId,
    required this.zodiacSignName,
    required this.relationshipStatusId,
    required this.relationshipStatusName,
    required this.religionId,
    required this.religionName,
    required this.drinkingHabitId,
    required this.drinkingHabitName,
    required this.smokingHabitId,
    required this.smokingHabitName,
    required this.sexualOrientationId,
    required this.sexualOrientationName,
    required this.educationalQualificationId,
    required this.educationalQualificationName,
    required this.nativeLanguageId,
    required this.nativeLanguageName,
    required this.occupationId,
    required this.occupationName,
    required this.emotionId,
    required this.emotionUpdatedAt,
    required this.emotionName,
    required this.emotionIcon,
    required this.emotionFallbackEmoji,
    required this.filterMyPreferredGender,
    required this.filterPreferredGender,
    required this.filterRadiusInKm,
    required this.filterAgeMin,
    required this.filterAgeMax,
    required this.filterHeightInCmMin,
    required this.filterHeightInCmMax,
    required this.filterPassportModeLocation,
    required this.filterPassportModeLatitude,
    required this.filterPassportModeLongitude,
    required this.filterNativeLanguageIds,
    required this.filterZodiacSignIds,
    required this.isRealGiftsAccepted,
    required this.isGenderRevealed,
    required this.isHeightRevealed,
    required this.isReligionRevealed,
    required this.isDrinkingHabitRevealed,
    required this.isSmokingHabitRevealed,
    required this.isSexualOrientationRevealed,
    required this.isEducationalQualificationRevealed,
    required this.isPersonalityTraitsRevealed,
    required this.isLifestyleActivitiesRevealed,
    required this.isContactDiscoveryEnabled,
    required this.isGhostModeEnabled,
    required this.isDarkModeEnabled,
    required this.isReceivingPushNotifications,
    required this.isReceivingFlashMessages,
    required this.isLastSeenEnabled,
    required this.isOnlineStatusEnabled,
    required this.isReadReceiptsEnabled,
    required this.isProfileHiddenFromSearch,
    required this.hiddenFromSearchAt,
    required this.isProfileReported,
    required this.reportedAt,
    required this.isProfileStriked,
    required this.strikedAt,
    required this.isProfileBlacklisted,
    required this.blacklistedAt,
    required this.isAccountSuspended,
    required this.suspendedAt,
    required this.createdBy,
    required this.createdByName,
    required this.updatedBy,
    required this.updatedByName,
    required this.deletedBy,
    required this.deletedByName,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.authStatus,
    required this.profilePhotoUrl,
    required this.square100ProfilePhotoUrl,
    required this.square300ProfilePhotoUrl,
    required this.square500ProfilePhotoUrl,
    required this.age,
  });

  final String? name;
  final String? username;
  final String? email;
  final dynamic emailVerifiedAt;
  final dynamic currentTeamId;
  final dynamic profilePhotoPath;
  final dynamic profilePhotoId;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? gender;
  final dynamic countryId;
  final dynamic countryName;
  final dynamic stateId;
  final dynamic stateName;
  final dynamic cityId;
  final dynamic cityName;
  final dynamic customCityName;
  final String? address;
  final dynamic zip;
  final bool? isActive;
  final int? coinBalance;
  final String? customerCode;
  final bool? isPremiumCustomer;
  final bool? isOnline;
  final bool? isProfilePreferencesCompleted;
  final int? profileCompletionPercentage;
  final int? isInstagramConnected;
  final String? preferredGender;
  final dynamic selfieVerificationImagePath;
  final dynamic selfieVerificationImageId;
  final dynamic selfieVerificationVideoPath;
  final dynamic selfieVerificationVideoId;
  final dynamic selfieVerificationUploadedAt;
  final dynamic selfieImageApprovedAt;
  final dynamic selfieImageApprovedBy;
  final dynamic selfieVideoApprovedAt;
  final dynamic selfieVideoApprovedBy;
  final dynamic accountVerifiedAt;
  final int? remainingSwipeLimit;
  final DateTime? resetSwipeLimitAt;
  final int? remainingSuperLikeLimit;
  final DateTime? resetSuperLikeLimitAt;
  final int? remainingFlashMessageLimit;
  final DateTime? resetFlashMessageLimitAt;
  final int? remainingBoostLimit;
  final dynamic resetBoostLimitAt;
  final String? currentLocation;
  final String? currentLatitude;
  final String? currentLongitude;
  final dynamic bioIntroText;
  final int? heightInCm;
  final dynamic lastActiveAt;
  final dynamic zodiacSignId;
  final dynamic zodiacSignName;
  final int? relationshipStatusId;
  final String? relationshipStatusName;
  final int? religionId;
  final String? religionName;
  final int? drinkingHabitId;
  final String? drinkingHabitName;
  final int? smokingHabitId;
  final String? smokingHabitName;
  final int? sexualOrientationId;
  final String? sexualOrientationName;
  final int? educationalQualificationId;
  final String? educationalQualificationName;
  final int? nativeLanguageId;
  final String? nativeLanguageName;
  final int? occupationId;
  final String? occupationName;
  final dynamic emotionId;
  final dynamic emotionUpdatedAt;
  final dynamic emotionName;
  final dynamic emotionIcon;
  final dynamic emotionFallbackEmoji;
  final dynamic filterMyPreferredGender;
  final dynamic filterPreferredGender;
  final dynamic filterRadiusInKm;
  final dynamic filterAgeMin;
  final dynamic filterAgeMax;
  final dynamic filterHeightInCmMin;
  final dynamic filterHeightInCmMax;
  final dynamic filterPassportModeLocation;
  final dynamic filterPassportModeLatitude;
  final dynamic filterPassportModeLongitude;
  final dynamic filterNativeLanguageIds;
  final dynamic filterZodiacSignIds;
  final bool? isRealGiftsAccepted;
  final bool? isGenderRevealed;
  final bool? isHeightRevealed;
  final bool? isReligionRevealed;
  final bool? isDrinkingHabitRevealed;
  final bool? isSmokingHabitRevealed;
  final bool? isSexualOrientationRevealed;
  final bool? isEducationalQualificationRevealed;
  final bool? isPersonalityTraitsRevealed;
  final bool? isLifestyleActivitiesRevealed;
  final bool? isContactDiscoveryEnabled;
  final bool? isGhostModeEnabled;
  final bool? isDarkModeEnabled;
  final bool? isReceivingPushNotifications;
  final bool? isReceivingFlashMessages;
  final bool? isLastSeenEnabled;
  final bool? isOnlineStatusEnabled;
  final bool? isReadReceiptsEnabled;
  final bool? isProfileHiddenFromSearch;
  final dynamic hiddenFromSearchAt;
  final bool? isProfileReported;
  final dynamic reportedAt;
  final bool? isProfileStriked;
  final dynamic strikedAt;
  final bool? isProfileBlacklisted;
  final dynamic blacklistedAt;
  final bool? isAccountSuspended;
  final dynamic suspendedAt;
  final dynamic createdBy;
  final dynamic createdByName;
  final int? updatedBy;
  final String? updatedByName;
  final dynamic deletedBy;
  final dynamic deletedByName;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final AuthStatus? authStatus;
  final String? profilePhotoUrl;
  final String? square100ProfilePhotoUrl;
  final String? square300ProfilePhotoUrl;
  final String? square500ProfilePhotoUrl;
  final int? age;

  factory DataAttributes.fromJson(Map<String, dynamic> json){
    return DataAttributes(
      name: json["name"],
      username: json["username"],
      email: json["email"],
      emailVerifiedAt: json["email_verified_at"],
      currentTeamId: json["current_team_id"],
      profilePhotoPath: json["profile_photo_path"],
      profilePhotoId: json["profile_photo_id"],
      dateOfBirth: DateTime.tryParse(json["date_of_birth"] ?? ""),
      phone: json["phone"],
      gender: json["gender"],
      countryId: json["country_id"],
      countryName: json["country_name"],
      stateId: json["state_id"],
      stateName: json["state_name"],
      cityId: json["city_id"],
      cityName: json["city_name"],
      customCityName: json["custom_city_name"],
      address: json["address"],
      zip: json["zip"],
      isActive: json["is_active"],
      coinBalance: json["coin_balance"],
      customerCode: json["customer_code"],
      isPremiumCustomer: json["is_premium_customer"],
      isOnline: json["is_online"],
      isProfilePreferencesCompleted: json["is_profile_preferences_completed"],
      profileCompletionPercentage: json["profile_completion_percentage"],
      isInstagramConnected: json["is_instagram_connected"],
      preferredGender: json["preferred_gender"],
      selfieVerificationImagePath: json["selfie_verification_image_path"],
      selfieVerificationImageId: json["selfie_verification_image_id"],
      selfieVerificationVideoPath: json["selfie_verification_video_path"],
      selfieVerificationVideoId: json["selfie_verification_video_id"],
      selfieVerificationUploadedAt: json["selfie_verification_uploaded_at"],
      selfieImageApprovedAt: json["selfie_image_approved_at"],
      selfieImageApprovedBy: json["selfie_image_approved_by"],
      selfieVideoApprovedAt: json["selfie_video_approved_at"],
      selfieVideoApprovedBy: json["selfie_video_approved_by"],
      accountVerifiedAt: json["account_verified_at"],
      remainingSwipeLimit: json["remaining_swipe_limit"],
      resetSwipeLimitAt: DateTime.tryParse(json["reset_swipe_limit_at"] ?? ""),
      remainingSuperLikeLimit: json["remaining_super_like_limit"],
      resetSuperLikeLimitAt: DateTime.tryParse(json["reset_super_like_limit_at"] ?? ""),
      remainingFlashMessageLimit: json["remaining_flash_message_limit"],
      resetFlashMessageLimitAt: DateTime.tryParse(json["reset_flash_message_limit_at"] ?? ""),
      remainingBoostLimit: json["remaining_boost_limit"],
      resetBoostLimitAt: json["reset_boost_limit_at"],
      currentLocation: json["current_location"],
      currentLatitude: json["current_latitude"],
      currentLongitude: json["current_longitude"],
      bioIntroText: json["bio_intro_text"],
      heightInCm: json["height_in_cm"],
      lastActiveAt: json["last_active_at"],
      zodiacSignId: json["zodiac_sign_id"],
      zodiacSignName: json["zodiac_sign_name"],
      relationshipStatusId: json["relationship_status_id"],
      relationshipStatusName: json["relationship_status_name"],
      religionId: json["religion_id"],
      religionName: json["religion_name"],
      drinkingHabitId: json["drinking_habit_id"],
      drinkingHabitName: json["drinking_habit_name"],
      smokingHabitId: json["smoking_habit_id"],
      smokingHabitName: json["smoking_habit_name"],
      sexualOrientationId: json["sexual_orientation_id"],
      sexualOrientationName: json["sexual_orientation_name"],
      educationalQualificationId: json["educational_qualification_id"],
      educationalQualificationName: json["educational_qualification_name"],
      nativeLanguageId: json["native_language_id"],
      nativeLanguageName: json["native_language_name"],
      occupationId: json["occupation_id"],
      occupationName: json["occupation_name"],
      emotionId: json["emotion_id"],
      emotionUpdatedAt: json["emotion_updated_at"],
      emotionName: json["emotion_name"],
      emotionIcon: json["emotion_icon"],
      emotionFallbackEmoji: json["emotion_fallback_emoji"],
      filterMyPreferredGender: json["filter_my_preferred_gender"],
      filterPreferredGender: json["filter_preferred_gender"],
      filterRadiusInKm: json["filter_radius_in_km"],
      filterAgeMin: json["filter_age_min"],
      filterAgeMax: json["filter_age_max"],
      filterHeightInCmMin: json["filter_height_in_cm_min"],
      filterHeightInCmMax: json["filter_height_in_cm_max"],
      filterPassportModeLocation: json["filter_passport_mode_location"],
      filterPassportModeLatitude: json["filter_passport_mode_latitude"],
      filterPassportModeLongitude: json["filter_passport_mode_longitude"],
      filterNativeLanguageIds: json["filter_native_language_ids"],
      filterZodiacSignIds: json["filter_zodiac_sign_ids"],
      isRealGiftsAccepted: json["is_real_gifts_accepted"],
      isGenderRevealed: json["is_gender_revealed"],
      isHeightRevealed: json["is_height_revealed"],
      isReligionRevealed: json["is_religion_revealed"],
      isDrinkingHabitRevealed: json["is_drinking_habit_revealed"],
      isSmokingHabitRevealed: json["is_smoking_habit_revealed"],
      isSexualOrientationRevealed: json["is_sexual_orientation_revealed"],
      isEducationalQualificationRevealed: json["is_educational_qualification_revealed"],
      isPersonalityTraitsRevealed: json["is_personality_traits_revealed"],
      isLifestyleActivitiesRevealed: json["is_lifestyle_activities_revealed"],
      isContactDiscoveryEnabled: json["is_contact_discovery_enabled"],
      isGhostModeEnabled: json["is_ghost_mode_enabled"],
      isDarkModeEnabled: json["is_dark_mode_enabled"],
      isReceivingPushNotifications: json["is_receiving_push_notifications"],
      isReceivingFlashMessages: json["is_receiving_flash_messages"],
      isLastSeenEnabled: json["is_last_seen_enabled"],
      isOnlineStatusEnabled: json["is_online_status_enabled"],
      isReadReceiptsEnabled: json["is_read_receipts_enabled"],
      isProfileHiddenFromSearch: json["is_profile_hidden_from_search"],
      hiddenFromSearchAt: json["hidden_from_search_at"],
      isProfileReported: json["is_profile_reported"],
      reportedAt: json["reported_at"],
      isProfileStriked: json["is_profile_striked"],
      strikedAt: json["striked_at"],
      isProfileBlacklisted: json["is_profile_blacklisted"],
      blacklistedAt: json["blacklisted_at"],
      isAccountSuspended: json["is_account_suspended"],
      suspendedAt: json["suspended_at"],
      createdBy: json["created_by"],
      createdByName: json["created_by_name"],
      updatedBy: json["updated_by"],
      updatedByName: json["updated_by_name"],
      deletedBy: json["deleted_by"],
      deletedByName: json["deleted_by_name"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      deletedAt: json["deleted_at"],
      authStatus: json["auth_status"] == null ? null : AuthStatus.fromJson(json["auth_status"]),
      profilePhotoUrl: json["profile_photo_url"],
      square100ProfilePhotoUrl: json["square100_profile_photo_url"],
      square300ProfilePhotoUrl: json["square300_profile_photo_url"],
      square500ProfilePhotoUrl: json["square500_profile_photo_url"],
      age: json["age"],
    );
  }

}

class AuthStatus {
  AuthStatus({
    required this.accessToken,
    required this.tokenType,
    required this.is2FaConfiguredByUser,
    required this.is2FaVerifiedByUser,
    required this.isEmailVerificationRequired,
  });

  final String? accessToken;
  final String? tokenType;
  final bool? is2FaConfiguredByUser;
  final bool? is2FaVerifiedByUser;
  final bool? isEmailVerificationRequired;

  factory AuthStatus.fromJson(Map<String, dynamic> json){
    return AuthStatus(
      accessToken: json["access_token"],
      tokenType: json["token_type"],
      is2FaConfiguredByUser: json["is_2fa_configured_by_user"],
      is2FaVerifiedByUser: json["is_2fa_verified_by_user"],
      isEmailVerificationRequired: json["is_email_verification_required"],
    );
  }

}

class DataRelationships {
  DataRelationships({
    required this.partnerExpectations,
    required this.lifeStyleActivities,
    required this.personalityTraits,
    required this.avatars,
    required this.userIdentityProof,
  });

  final Avatars? partnerExpectations;
  final Avatars? lifeStyleActivities;
  final Avatars? personalityTraits;
  final Avatars? avatars;
  final Avatars? userIdentityProof;

  factory DataRelationships.fromJson(Map<String, dynamic> json){
    return DataRelationships(
      partnerExpectations: json["partnerExpectations"] == null ? null : Avatars.fromJson(json["partnerExpectations"]),
      lifeStyleActivities: json["lifeStyleActivities"] == null ? null : Avatars.fromJson(json["lifeStyleActivities"]),
      personalityTraits: json["personalityTraits"] == null ? null : Avatars.fromJson(json["personalityTraits"]),
      avatars: json["avatars"] == null ? null : Avatars.fromJson(json["avatars"]),
      userIdentityProof: json["userIdentityProof"] == null ? null : Avatars.fromJson(json["userIdentityProof"]),
    );
  }

}

class Avatars {
  Avatars({
    required this.data,
  });

  final List<Dat> data;

  factory Avatars.fromJson(Map<String, dynamic> json){
    return Avatars(
      data: json["data"] == null ? [] : List<Dat>.from(json["data"]!.map((x) => Dat.fromJson(x))),
    );
  }

}

class Dat {
  Dat({
    required this.type,
    required this.id,
  });

  final String? type;
  final String? id;

  factory Dat.fromJson(Map<String, dynamic> json){
    return Dat(
      type: json["type"],
      id: json["id"],
    );
  }

}

class Included {
  Included({
    required this.type,
    required this.id,
    required this.attributes,
    required this.relationships,
  });

  final String? type;
  final String? id;
  final IncludedAttributes? attributes;
  final IncludedRelationships? relationships;

  factory Included.fromJson(Map<String, dynamic> json){
    return Included(
      type: json["type"],
      id: json["id"],
      attributes: json["attributes"] == null ? null : IncludedAttributes.fromJson(json["attributes"]),
      relationships: json["relationships"] == null ? null : IncludedRelationships.fromJson(json["relationships"]),
    );
  }

}

class IncludedAttributes {
  IncludedAttributes({
    required this.modelType,
    required this.modelId,
    required this.uuid,
    required this.collectionName,
    required this.name,
    required this.fileName,
    required this.mimeType,
    required this.disk,
    required this.conversionsDisk,
    required this.size,
    required this.manipulations,
    required this.customProperties,
    required this.generatedConversions,
    required this.responsiveImages,
    required this.orderColumn,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.originalUrl,
    required this.previewUrl,
    required this.icon,
    required this.traitTypeId,
    required this.laravelThroughKey,
    required this.iconUrl,
    required this.userId,
    required this.isActive,
    required this.approvedAt,
    required this.approvedBy,
    required this.deletedAt,
    required this.imageUrl,
    required this.square100ImageUrl,
    required this.square300ImageUrl,
    required this.square500ImageUrl,
  });

  final String? modelType;
  final int? modelId;
  final String? uuid;
  final String? collectionName;
  final String? name;
  final String? fileName;
  final String? mimeType;
  final String? disk;
  final String? conversionsDisk;
  final int? size;
  final List<dynamic> manipulations;
  final CustomProperties? customProperties;
  final GeneratedConversions? generatedConversions;
  final List<dynamic> responsiveImages;
  final int? orderColumn;
  final int? createdBy;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? originalUrl;
  final String? previewUrl;
  final String? icon;
  final int? traitTypeId;
  final int? laravelThroughKey;
  final String? iconUrl;
  final int? userId;
  final bool? isActive;
  final DateTime? approvedAt;
  final int? approvedBy;
  final dynamic deletedAt;
  final String? imageUrl;
  final String? square100ImageUrl;
  final String? square300ImageUrl;
  final String? square500ImageUrl;

  factory IncludedAttributes.fromJson(Map<String, dynamic> json){
    return IncludedAttributes(
      modelType: json["model_type"],
      modelId: json["model_id"],
      uuid: json["uuid"],
      collectionName: json["collection_name"],
      name: json["name"],
      fileName: json["file_name"],
      mimeType: json["mime_type"],
      disk: json["disk"],
      conversionsDisk: json["conversions_disk"],
      size: json["size"],
      manipulations: json["manipulations"] == null ? [] : List<dynamic>.from(json["manipulations"]!.map((x) => x)),
      customProperties: json["custom_properties"] == null ? null : CustomProperties.fromJson(json["custom_properties"]),
      generatedConversions: json["generated_conversions"] == null ? null : GeneratedConversions.fromJson(json["generated_conversions"]),
      responsiveImages: json["responsive_images"] == null ? [] : List<dynamic>.from(json["responsive_images"]!.map((x) => x)),
      orderColumn: json["order_column"],
      createdBy: json["created_by"],
      updatedBy: json["updated_by"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      originalUrl: json["original_url"],
      previewUrl: json["preview_url"],
      icon: json["icon"],
      traitTypeId: json["trait_type_id"],
      laravelThroughKey: json["laravel_through_key"],
      iconUrl: json["icon_url"],
      userId: json["user_id"],
      isActive: json["is_active"],
      approvedAt: DateTime.tryParse(json["approved_at"] ?? ""),
      approvedBy: json["approved_by"],
      deletedAt: json["deleted_at"],
      imageUrl: json["image_url"],
      square100ImageUrl: json["square100_image_url"],
      square300ImageUrl: json["square300_image_url"],
      square500ImageUrl: json["square500_image_url"],
    );
  }

}

class CustomProperties {
  CustomProperties({
    required this.originalName,
  });

  final String? originalName;

  factory CustomProperties.fromJson(Map<String, dynamic> json){
    return CustomProperties(
      originalName: json["original_name"],
    );
  }

}

class GeneratedConversions {
  GeneratedConversions({
    required this.generatedConversionsDefault,
    required this.square100,
    required this.square300,
    required this.square500,
  });

  final bool? generatedConversionsDefault;
  final bool? square100;
  final bool? square300;
  final bool? square500;

  factory GeneratedConversions.fromJson(Map<String, dynamic> json){
    return GeneratedConversions(
      generatedConversionsDefault: json["default"],
      square100: json["square100"],
      square300: json["square300"],
      square500: json["square500"],
    );
  }

}

class IncludedRelationships {
  IncludedRelationships({
    required this.mediaFile,
  });

  final MediaFile? mediaFile;

  factory IncludedRelationships.fromJson(Map<String, dynamic> json){
    return IncludedRelationships(
      mediaFile: json["mediaFile"] == null ? null : MediaFile.fromJson(json["mediaFile"]),
    );
  }

}

class MediaFile {
  MediaFile({
    required this.data,
  });

  final Dat? data;

  factory MediaFile.fromJson(Map<String, dynamic> json){
    return MediaFile(
      data: json["data"] == null ? null : Dat.fromJson(json["data"]),
    );
  }

}
