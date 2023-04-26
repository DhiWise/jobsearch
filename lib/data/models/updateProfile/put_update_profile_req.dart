class PutUpdateProfileReq {
  String? name;

  PutUpdateProfileReq({this.name});

  PutUpdateProfileReq.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    return data;
  }
}
