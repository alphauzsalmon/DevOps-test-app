// import 'dart:convert';
//
// List<TransactionModel> transactionModelFromJson(String str) => List<TransactionModel>.from(json.decode(str).map((x) => TransactionModel.fromJson(x)));
//
// String transactionModelToJson(List<TransactionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransactionModel {
  TransactionModel({
    this.companyName,
    this.eventName,
    this.number,
    this.amount,
    this.time,
    this.transType,
  });

  String? companyName;
  String? eventName;
  String? number;
  double? amount;
  String? time;
  int? transType;

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
    companyName: json["companyName"],
    eventName: json["eventName"],
    number: json["number"],
    amount: json["amount"],
    time: json["time"],
    transType: json["transType"],
  );

  Map<String, dynamic> toJson() => {
    "companyName": companyName,
    "eventName": eventName,
    "number": number,
    "amount": amount,
    "time": time,
    "transType": transType,
  };
}
