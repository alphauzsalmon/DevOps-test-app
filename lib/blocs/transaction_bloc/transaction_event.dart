part of 'transaction_bloc.dart';

abstract class TransactionEvent {
  const TransactionEvent();
}

class LoadTransactions extends TransactionEvent {
  final int type;

  const LoadTransactions({required this.type});
}

