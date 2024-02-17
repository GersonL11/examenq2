import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_read_json/models/book.dart';

class BookService {
  Future<List<Book>> getBooks() async {
    try {
      // Cargar el archivo JSON desde los activos
      final String jsonString = await rootBundle.loadString('database/cardlist.json');
      final List<dynamic> jsonData = json.decode(jsonString)['data'];

      // Mapear los datos JSON en objetos Book
      final List<Book> books = jsonData.map((bookJson) => Book.fromJson(bookJson)).toList();

      return books;
    } catch (e) {
      print('Error fetching books: $e');
      throw Exception('Error fetching books: ${e.toString()}');
    }
  }
}
