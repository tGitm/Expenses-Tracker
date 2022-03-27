// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (contex, index) {
          return Card(
            child: Row(children: [
              //converting double to string
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.purple,
                      width: 2
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '€ ${transactions[index].amount.toString()}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  transactions[index].title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    DateFormat().format(transactions[index].date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                ),
              ],)
            ],),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}