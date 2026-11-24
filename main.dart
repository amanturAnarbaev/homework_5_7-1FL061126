import 'lib/bank.dart';

void main() {
  //задание 1 -----------------------------------------
  Book first = Book(name: 'name1', author: 'amantur', page: 49);
  Book second = Book(name: 'name2', author: 'amantur', page: 45);
  Book third = Book(name: 'name3', author: 'amantur');
  Book fourth = Book(name: 'name4', author: 'amantur', isReaden: true);

  third.makeRead();

  List<Book> bookList = [first, second, third, fourth];

  for (var book in bookList) {
    book.introduce();
    print('----------------------\n');
  }

  print(' your unreaded books are\n');
  for (var unreadedBooks in bookList) {
    if (unreadedBooks.isReaden == false) {
      unreadedBooks.introduce();
    }
  }

  //задание 2 -----------------------------------------

  Bank accoount = Bank("amantur", 100);

  accoount.deposit(100);
  accoount.withdraw(90);
  print(accoount.balance);

  // accoount.balance = 3000;
}

class Book {
  String name;
  String author;
  int? page;
  bool isReaden;

  Book(
      {required this.name,
      required this.author,
      this.page,
      this.isReaden = false});

  void introduce() {
    print(
        'the name of the book is $name, author is $author, it has $page pages, read status: ${isReaden ? 'Read' : 'Not read'}');
  }

  void makeRead() {
    isReaden = true;
  }
}
