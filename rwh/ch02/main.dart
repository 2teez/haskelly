import 'bookstore.dart';
import 'customer.dart';

void main() {
  final book = Book(
    bookId: 0,
    bookName: "bible",
    bookAuthors: ["Moses", "Joshua", "Samuel", "Paul"],
  );

  print(book);

  final customer = Customer(
    customerId: 23678,
    name: "J.R. Hacker",
    address: ["255 Syntax Ct", "Milpitas, CA 95134", "USA"],
  );

  print(customer);
}
