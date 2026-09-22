class Book {
  const Book({this.bookId, this.bookName, this.bookAuthors});
  final bookId;
  final bookName;
  final bookAuthors;

  @override
  String toString() => 'Book(${this.bookId},${this.bookName}, ${this.bookAuthors})';
}
