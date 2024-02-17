// screens/book_list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_read_json/provider/book_provider.dart';
import 'package:flutter_read_json/provider/book_provider.dart';
import 'package:provider/provider.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookListProvider>(context);
    return Scaffold(
      body: FutureBuilder(
        future: bookProvider.fetchBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: bookProvider.books.length,
              itemBuilder: (context, index) {
                final book = bookProvider.books[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.publisher),
                  // Otros detalles del libro aquí
                );
              },
            );
          }
        },
      ),
    );
  }
}
