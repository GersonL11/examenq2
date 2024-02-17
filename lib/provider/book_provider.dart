// providers/book_provider.dart
import 'package:flutter/material.dart';
import 'package:flutter_read_json/models/book.dart';
import 'package:flutter_read_json/services/book_service.dart';

class BookListProvider with ChangeNotifier {
  final BookService _bookService = BookService();
  List<Book> _books = [];
  List<Book> get books => _books;
  
  Future<void> fetchBooks() async {
    try {
      _books = await _bookService.getBooks();
      notifyListeners();
    } catch (e) {
      print('Error fetching books: $e');
      throw e;
    }
  }
}
