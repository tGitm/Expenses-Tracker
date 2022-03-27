// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          FlatButton(
            onPressed: () {
              //executing function for adding transaction
              addTx(titleController.text, double.parse(amountController.text));
              print(titleController.text);
              print(amountController.text);
            },
            child: Text('Add Transaction'),
            textColor: Colors.purple,
          ),
        ],
        ),
      ),
    );  
  }
}