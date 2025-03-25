class UserChatResponse {
  List<Data>? data;
  List<Included>? included;
  Meta? meta;
  Links? links;

  UserChatResponse({this.data, this.included, this.meta, this.links});

  UserChatResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['included'] != null) {
      included = <Included>[];
      json['included'].forEach((v) {
        included!.add(new Included.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.included != null) {
      data['included'] = this.included!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class Data {
  String? type;
  String? id;
  Attributes? attributes;
  Relationships? relationships;

  Data({this.type, this.id, this.attributes, this.relationships});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    relationships = json['relationships'] != null
        ? new Relationships.fromJson(json['relationships'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.relationships != null) {
      data['relationships'] = this.relationships!.toJson();
    }
    return data;
  }
}

class Attributes {
  int? chatThreadId;
  int? chatMessageTypeId;
  int? senderId;
  int? receiverId;
  String? message;
  MediaMeta? mediaMeta;
  bool? isOneTimeView;
  bool? isOnVanishMode;
  Null? scheduledAt;
  String? sentAt;
  String? deliveredAt;
  Null? viewedAt;
  Null? stickerId;
  Null? giftOrderId;
  Null? senderCoinTransactionId;
  Null? receiverCoinTransactionId;
  Null? transferCoins;
  Null? deletedForSenderBy;
  Null? deletedForSenderAt;
  Null? deletedForReceiverBy;
  Null? deletedForReceiverAt;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? mediaUrl;

  Attributes(
      {this.chatThreadId,
        this.chatMessageTypeId,
        this.senderId,
        this.receiverId,
        this.message,
        this.mediaMeta,
        this.isOneTimeView,
        this.isOnVanishMode,
        this.scheduledAt,
        this.sentAt,
        this.deliveredAt,
        this.viewedAt,
        this.stickerId,
        this.giftOrderId,
        this.senderCoinTransactionId,
        this.receiverCoinTransactionId,
        this.transferCoins,
        this.deletedForSenderBy,
        this.deletedForSenderAt,
        this.deletedForReceiverBy,
        this.deletedForReceiverAt,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.mediaUrl});

  Attributes.fromJson(Map<String, dynamic> json) {
    chatThreadId = json['chat_thread_id'];
    chatMessageTypeId = json['chat_message_type_id'];
    senderId = json['sender_id'];
    receiverId = json['receiver_id'];
    message = json['message'];
    mediaMeta = json['media_meta'] != null
        ? new MediaMeta.fromJson(json['media_meta'])
        : null;
    isOneTimeView = json['is_one_time_view'];
    isOnVanishMode = json['is_on_vanish_mode'];
    scheduledAt = json['scheduled_at'];
    sentAt = json['sent_at'];
    deliveredAt = json['delivered_at'];
    viewedAt = json['viewed_at'];
    stickerId = json['sticker_id'];
    giftOrderId = json['gift_order_id'];
    senderCoinTransactionId = json['sender_coin_transaction_id'];
    receiverCoinTransactionId = json['receiver_coin_transaction_id'];
    transferCoins = json['transfer_coins'];
    deletedForSenderBy = json['deleted_for_sender_by'];
    deletedForSenderAt = json['deleted_for_sender_at'];
    deletedForReceiverBy = json['deleted_for_receiver_by'];
    deletedForReceiverAt = json['deleted_for_receiver_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    mediaUrl = json['media_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chat_thread_id'] = this.chatThreadId;
    data['chat_message_type_id'] = this.chatMessageTypeId;
    data['sender_id'] = this.senderId;
    data['receiver_id'] = this.receiverId;
    data['message'] = this.message;
    if (this.mediaMeta != null) {
      data['media_meta'] = this.mediaMeta!.toJson();
    }
    data['is_one_time_view'] = this.isOneTimeView;
    data['is_on_vanish_mode'] = this.isOnVanishMode;
    data['scheduled_at'] = this.scheduledAt;
    data['sent_at'] = this.sentAt;
    data['delivered_at'] = this.deliveredAt;
    data['viewed_at'] = this.viewedAt;
    data['sticker_id'] = this.stickerId;
    data['gift_order_id'] = this.giftOrderId;
    data['sender_coin_transaction_id'] = this.senderCoinTransactionId;
    data['receiver_coin_transaction_id'] = this.receiverCoinTransactionId;
    data['transfer_coins'] = this.transferCoins;
    data['deleted_for_sender_by'] = this.deletedForSenderBy;
    data['deleted_for_sender_at'] = this.deletedForSenderAt;
    data['deleted_for_receiver_by'] = this.deletedForReceiverBy;
    data['deleted_for_receiver_at'] = this.deletedForReceiverAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['media_url'] = this.mediaUrl;
    return data;
  }
}

class MediaMeta {
  int? fileSize;
  String? mimeType;
  Null? imageData;
  Null? message;

  MediaMeta({this.fileSize, this.mimeType, this.imageData, this.message});

  MediaMeta.fromJson(Map<String, dynamic> json) {
    fileSize = json['file_size'];
    mimeType = json['mime_type'];
    imageData = json['image_data'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file_size'] = this.fileSize;
    data['mime_type'] = this.mimeType;
    data['image_data'] = this.imageData;
    data['message'] = this.message;
    return data;
  }
}

class Relationships {
  Sender? sender;
  Sticker? sticker;
  Sticker? giftOrder;

  Relationships({this.sender, this.sticker, this.giftOrder});

  Relationships.fromJson(Map<String, dynamic> json) {
    sender =
    json['sender'] != null ? new Sender.fromJson(json['sender']) : null;
    sticker =
    json['sticker'] != null ? new Sticker.fromJson(json['sticker']) : null;
    giftOrder = json['giftOrder'] != null
        ? new Sticker.fromJson(json['giftOrder'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sender != null) {
      data['sender'] = this.sender!.toJson();
    }
    if (this.sticker != null) {
      data['sticker'] = this.sticker!.toJson();
    }
    if (this.giftOrder != null) {
      data['giftOrder'] = this.giftOrder!.toJson();
    }
    return data;
  }
}

class Sender {
  Data? data;

  Sender({this.data});

  Sender.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Dataa {
  String? type;
  String? id;

  Dataa({this.type, this.id});

  Dataa.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    return data;
  }
}

class Sticker {
  Null? data;

  Sticker({this.data});

  Sticker.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}

class Included {
  String? type;
  String? id;
  Attributes? attributes;

  Included({this.type, this.id, this.attributes});

  Included.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    return data;
  }
}

class Attributess {
  String? name;
  String? username;
  String? email;
  Null? profilePhotoUrl;
  Null? square100ProfilePhotoUrl;
  Null? square300ProfilePhotoUrl;
  Null? square500ProfilePhotoUrl;
  Null? age;

  Attributess(
      {this.name,
        this.username,
        this.email,
        this.profilePhotoUrl,
        this.square100ProfilePhotoUrl,
        this.square300ProfilePhotoUrl,
        this.square500ProfilePhotoUrl,
        this.age});

  Attributess.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
    square100ProfilePhotoUrl = json['square100_profile_photo_url'];
    square300ProfilePhotoUrl = json['square300_profile_photo_url'];
    square500ProfilePhotoUrl = json['square500_profile_photo_url'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['profile_photo_url'] = this.profilePhotoUrl;
    data['square100_profile_photo_url'] = this.square100ProfilePhotoUrl;
    data['square300_profile_photo_url'] = this.square300ProfilePhotoUrl;
    data['square500_profile_photo_url'] = this.square500ProfilePhotoUrl;
    data['age'] = this.age;
    return data;
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Pagination {
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;

  Pagination(
      {this.total,
        this.count,
        this.perPage,
        this.currentPage,
        this.totalPages});

  Pagination.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['count'] = this.count;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    data['total_pages'] = this.totalPages;
    return data;
  }
}

class Links {
  String? self;
  String? first;
  String? next;
  String? last;

  Links({this.self, this.first, this.next, this.last});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    first = json['first'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['first'] = this.first;
    data['next'] = this.next;
    data['last'] = this.last;
    return data;
  }
}
