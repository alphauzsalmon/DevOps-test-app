part of 'transaction_bloc.dart';

abstract class TransactionState {
  const TransactionState();
}

class TransactionLoading extends TransactionState {}

class TransactionLoaded extends TransactionState {
  final List<TransactionModel> transactions;

  const TransactionLoaded(this.transactions);
}

class TransactionError extends TransactionState {
  final String message;

  const TransactionError(this.message);
}
