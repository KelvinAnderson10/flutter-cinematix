import 'package:cinematix/domain/entities/result.dart';
import 'package:cinematix/domain/entities/transaction.dart';

abstract interface class TransactionRepository {
  Future<Result<Transaction>> createTransaction(
      {required Transaction transaction});

  Future<Result<List<Transaction>>> getUserTransactions({required String uid});
}
