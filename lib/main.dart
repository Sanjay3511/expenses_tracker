import 'package:expenses_tracker/widgets/transaction_list.dart';
import 'package:expenses_tracker/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import 'models/transaction.dart';
import 'widgets/transaction_list.dart';
import 'widgets/new_transaction.dart';
import 'widgets/user_transaction.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return MaterialApp(
    title:'ExpensesTracker',
    home: MyHomePage(),
  );
}

}
class MyHomePage extends StatelessWidget{
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  late String titleInput;
  late String amountInput;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: (Colors.white),
      appBar: AppBar(
        title: Text('ExpensesTracker'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child:Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5 ,
            ),
         ),
          UserTransactions()
        ],
      ),
    );
  }


}