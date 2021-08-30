import 'dart:convert';

SmsModel smsModelFromJson(String str) => SmsModel.fromJson(json.decode(str));

String smsModelToJson(SmsModel data) => json.encode(data.toJson());

class SmsModel {
  SmsModel({
    this.success,
    this.data,
    this.message,
  });

  final bool? success;
  final Data? data;
  final String? message;

  factory SmsModel.fromJson(Map<String, dynamic> json) => SmsModel(
    success: json["success"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data!.toJson(),
    "message": message,
  };
}

class Data {
  Data({
    this.id,
    this.from,
    this.number,
    this.text,
    this.status,
    this.extendStatus,
    this.channel,
    this.cost,
    this.dateCreate,
    this.dateSend,
  });

  final int? id;
  final String? from;
  final String? number;
  final String? text;
  final int? status;
  final String? extendStatus;
  final String? channel;
  final double? cost;
  final int? dateCreate;
  final int? dateSend;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    from: json["from"],
    number: json["number"],
    text: json["text"],
    status: json["status"],
    extendStatus: json["extendStatus"],
    channel: json["channel"],
    cost: json["cost"].toDouble(),
    dateCreate: json["dateCreate"],
    dateSend: json["dateSend"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "from": from,
    "number": number,
    "text": text,
    "status": status,
    "extendStatus": extendStatus,
    "channel": channel,
    "cost": cost,
    "dateCreate": dateCreate,
    "dateSend": dateSend,
  };
}
