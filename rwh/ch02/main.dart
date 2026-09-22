import 'bookstore.dart';

void main() {
  final book = Book(
    bookId: 0,
    bookName: "bible",
    bookAuthors: ["Moses", "Joshua", "Samuel", "Paul"],
  );

  print(book);
}
