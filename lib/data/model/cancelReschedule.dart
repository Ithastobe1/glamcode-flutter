class CancelReschedule {
  String? status;
  String? message;
  String? bookingid;

  CancelReschedule({this.status, this.message, this.bookingid});

  CancelReschedule.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    bookingid = json['bookingid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['bookingid'] = bookingid;
    return data;
  }
}
