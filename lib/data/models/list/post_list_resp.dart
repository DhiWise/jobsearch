class PostListResp {
  String? status;
  String? message;
  Data? data;

  PostListResp({this.status, this.message, this.data});

  PostListResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.message != null) {
      data['message'] = this.message;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  List<DataItem>? data;
  Paginator? paginator;

  Data({this.data, this.paginator});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataItem>[];
      json['data'].forEach((v) {
        data?.add(DataItem.fromJson(v));
      });
    }
    paginator = json['paginator'] != null
        ? Paginator.fromJson(json['paginator'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    if (this.paginator != null) {
      data['paginator'] = this.paginator?.toJson();
    }
    return data;
  }
}

class DataItem {
  int? loginRetryLimit;
  String? password;
  String? email;
  int? role;
  String? createdAt;
  String? updatedAt;
  bool? isDeleted;
  bool? isActive;
  String? id;

  DataItem(
      {this.loginRetryLimit,
      this.password,
      this.email,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.isDeleted,
      this.isActive,
      this.id});

  DataItem.fromJson(Map<String, dynamic> json) {
    loginRetryLimit = json['loginRetryLimit'];
    password = json['password'];
    email = json['email'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isDeleted = json['isDeleted'];
    isActive = json['isActive'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.loginRetryLimit != null) {
      data['loginRetryLimit'] = this.loginRetryLimit;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.role != null) {
      data['role'] = this.role;
    }
    if (this.createdAt != null) {
      data['createdAt'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updatedAt'] = this.updatedAt;
    }
    if (this.isDeleted != null) {
      data['isDeleted'] = this.isDeleted;
    }
    if (this.isActive != null) {
      data['isActive'] = this.isActive;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Paginator {
  int? itemCount;
  int? perPage;
  int? pageCount;
  int? currentPage;
  int? slNo;
  bool? hasPrevPage;
  bool? hasNextPage;
  dynamic prev;
  dynamic next;

  Paginator(
      {this.itemCount,
      this.perPage,
      this.pageCount,
      this.currentPage,
      this.slNo,
      this.hasPrevPage,
      this.hasNextPage,
      this.prev,
      this.next});

  Paginator.fromJson(Map<String, dynamic> json) {
    itemCount = json['itemCount'];
    perPage = json['perPage'];
    pageCount = json['pageCount'];
    currentPage = json['currentPage'];
    slNo = json['slNo'];
    hasPrevPage = json['hasPrevPage'];
    hasNextPage = json['hasNextPage'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.itemCount != null) {
      data['itemCount'] = this.itemCount;
    }
    if (this.perPage != null) {
      data['perPage'] = this.perPage;
    }
    if (this.pageCount != null) {
      data['pageCount'] = this.pageCount;
    }
    if (this.currentPage != null) {
      data['currentPage'] = this.currentPage;
    }
    if (this.slNo != null) {
      data['slNo'] = this.slNo;
    }
    if (this.hasPrevPage != null) {
      data['hasPrevPage'] = this.hasPrevPage;
    }
    if (this.hasNextPage != null) {
      data['hasNextPage'] = this.hasNextPage;
    }
    if (this.prev != null) {
      data['prev'] = this.prev;
    }
    if (this.next != null) {
      data['next'] = this.next;
    }
    return data;
  }
}
