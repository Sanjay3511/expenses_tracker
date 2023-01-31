import '/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '/widgets/new_transaction.dart';
import '/models/transaction.dart';

class UserTransactions extends StatefulWidget {

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
  Transaction(id:'s1', title:'shoes', amount: 450.45, date:DateTime.now(),),
  Transaction(id:'s2', title:'GEARS', amount: 850.43, date:DateTime.now(),),
  Transaction(id:'s3', title:'gloves', amount: 1000.00, date:DateTime.now(),),
  ];
  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
