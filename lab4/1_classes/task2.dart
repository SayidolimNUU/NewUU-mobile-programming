class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

void main() {
  var myBook = Book('Demons', 'Fyodor Dostoevsky', 666);
  print('Title: ${myBook.title}, Author: ${myBook.author}, Pages: ${myBook.numberOfPages}');
}
