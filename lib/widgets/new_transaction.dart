import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return     Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (v al){
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            ElevatedButton(
              // style: ButtonStyle(backgroundColor: Colors.white),
              child: Text('Add Transactions',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: (){
               addTx(titleController.text,double.parse(amountController.text),
               );
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStatePropertyAll(Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
