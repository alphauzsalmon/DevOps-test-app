import 'package:devops_test_app/models/transaction_model.dart';

abstract class TransActionsRepository {
  List<TransactionModel> getTransactions();
}

class SampleTransActionsRepository extends TransActionsRepository {
  @override
  List<TransactionModel> getTransactions() {
    final List<Map<String, dynamic>> fakeData = [{
      "companyName": "OOO DELI",
      "eventName": "Kanstovar uchun to'lov",
      "number": "1",
      "amount": 5000000.0,
      "time": "09:45",
      "transType": 2
    },
      {
        "companyName": "AKB ANORBANK",
        "eventName": "Dastur uchun to'lov",
        "number": "2",
        "amount": 5000000.0,
        "time": "09:45",
        "transType": 1
      },
      {
        "companyName": "OOO UZAVTO",
        "eventName": "Avtomobil uchun to'lov",
        "number": "3",
        "amount": 100000000.0,
        "time": "09:45",
        "transType": 2
      },
      {
        "companyName": "OOO DEVOPS",
        "eventName": "Maosh",
        "number": "4",
        "amount": 10000000.0,
        "time": "09:45",
        "transType": 1
      }];
    return fakeData.map((e) => TransactionModel.fromJson(e)).toList();
  }
}