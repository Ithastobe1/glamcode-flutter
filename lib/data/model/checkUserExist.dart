class CheckUserExist {
  String? status;
  bool? isExist;

  CheckUserExist({this.status, this.isExist});

  CheckUserExist.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    isExist = json['isExist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['isExist'] = isExist;
    return data;
  }
}