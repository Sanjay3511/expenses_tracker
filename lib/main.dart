import 'package:flutter/material.dart';
import  'package:intl/intl.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
        Transaction(id:'s1', title:'shoes', amount: 450.45, date:DateTime.now(),),
        Transaction(id:'s2', title:'GEARS', amount: 850.43, date:DateTime.now(),),
        Transaction(id:'s3', title:'gloves', amount: 1000.00, date:DateTime.now(),),
  ];

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
          Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(decoration: InputDecoration(labelText: 'Title'),
                  ),
                  TextField(decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  ElevatedButton(
                    // style: ButtonStyle(backgroundColor: Colors.white),
                    child: Text('Add Transactions',
                      style: TextStyle(color: Colors.black),),
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.green),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx){
              return Card(
                child: Row(
                  children:<Widget>[
                    Container(
                      margin:EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ) ,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color:Colors.purple,
                          width: 2,
                          ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        // tx.amount.toString(),
                       '\$${ tx.amount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15 ,
                        color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(tx.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        ),
                        Text(DateFormat('yyy-MM-dd').format(tx.date),
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ],
                )
               );
            }).toList(),
          ),
        ],
      ),
    );
  }


}