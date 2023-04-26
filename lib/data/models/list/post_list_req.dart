class PostListReq {
  Options? options;

  PostListReq({this.options});

  PostListReq.fromJson(Map<String, dynamic> json) {
    options =
        json['options'] != null ? Options.fromJson(json['options']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.options != null) {
      data['options'] = this.options?.toJson();
    }
    return data;
  }
}

class Options {
  int? page;
  int? limit;

  Options({this.page, this.limit});

  Options.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.page != null) {
      data['page'] = this.page;
    }
    if (this.limit != null) {
      data['limit'] = this.limit;
    }
    return data;
  }
}
