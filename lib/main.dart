import 'package:flutter/material.dart';
import 'package:flutter_app/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter でも',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('上ファ'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                  Text(
                      model.uedaText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    ElevatedButton(
                      child: Text('ボタン'),
                      onPressed: () {
                        model.changeUedaText();
                      },
                    ),
                ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
