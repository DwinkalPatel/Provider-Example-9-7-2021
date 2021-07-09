import 'package:counter_app_provider/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: MultiProvider(
    providers: [
      ChangeNotifierProvider<DataModel>(
        create: (_) => DataModel(),
      ),
    ],
    child: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Couter With Provider'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  //calling fun
                  context.read<DataModel>().incresedValue();
                },
                child: Text('Tap to increment'),
              ),
              Text(
                //getting value
                '${context.watch<DataModel>().count}',
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
      ),
    );
  }
}
