// models/book.dart
class Book {
  final int id;
  final int year;
  final String title;
  final String publisher;
  final String isbn;
  final int pages;

  Book({
    required this.id,
    required this.year,
    required this.title,
    required this.publisher,
    required this.isbn,
    required this.pages,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] ?? 0,
      year: json['Year'] ?? 0,
      title: json['Title'] ?? '',
      publisher: json['Publisher'] ?? '',
      isbn: json['ISBN'] ?? '',
      pages: json['Pages'] ?? 0,
    );
  }
}
