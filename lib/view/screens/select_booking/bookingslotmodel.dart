class BookingSlotModel {
  String? status;
  List<AvailableSlots>? availableSlots;

  BookingSlotModel({this.status, this.availableSlots});

  BookingSlotModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['available_slots'] != null) {
      availableSlots = <AvailableSlots>[];
      json['available_slots'].forEach((v) {
        availableSlots!.add(AvailableSlots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (availableSlots != null) {
      data['available_slots'] =
          availableSlots!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AvailableSlots {
  String? date;
  String? slotStartTime;
  String? slotEndTime;
  String? otherDate;
  bool? isCurrent;

  AvailableSlots(
      {this.date,
      this.slotStartTime,
      this.slotEndTime,
      this.otherDate,
      this.isCurrent});

  AvailableSlots.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    slotStartTime = json['slot_start_time'];
    slotEndTime = json['slot_end_time'];
    otherDate = json['otherDate'];
    isCurrent = json['is_current'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['slot_start_time'] = slotStartTime;
    data['slot_end_time'] = slotEndTime;
    data['otherDate'] = otherDate;
    data['is_current'] = isCurrent;
    return data;
  }
}
