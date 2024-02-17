// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_read_json/provider/book_provider.dart';
import 'package:flutter_read_json/screens/book_list_screen.dart';
import 'package:flutter_read_json/provider/book_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookListProvider()),
      ],
      child: MaterialApp(
        title: 'Libreria',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('LIBRERIA'),
          ),
          body: BookListScreen(),
        ),
      ),
    );
  }
}
