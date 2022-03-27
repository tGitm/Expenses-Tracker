// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({ Key? key }) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}


class _UserTransactionsState extends State<UserTransactions> {
  //list of transactions from custom class Transactions
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'New car',
        amount: 40000,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Groceries',
        amount: 40.96,
        date: DateTime.now()
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),    //unique
      title: txTitle, 
      amount: txAmount, 
      date: DateTime.now()
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}