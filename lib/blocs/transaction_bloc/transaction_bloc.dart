import 'package:devops_test_app/models/transaction_model.dart';
import 'package:devops_test_app/repos/transactions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transaction_state.dart';
part 'transaction_event.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransActionsRepository _repository;

  TransactionBloc(this._repository) : super(TransactionLoading()) {
    on<LoadTransactions>(getExpenditureTransactions);
  }

  void getExpenditureTransactions(LoadTransactions event,
      Emitter<TransactionState> emit) {
    try {
      final List<TransactionModel> response = _repository.getTransactions();
      final List<TransactionModel> transactions = [];
      if (event.type == 0) {
        emit(TransactionLoaded(response));
      }
      else {
        for (var element in response) {
          if (element.transType == event.type) {
            transactions.add(element);
          }
        }
        emit(TransactionLoaded(transactions));
      }
    } catch (err) {
      emit(TransactionError(err.toString()));
    }
  }
}