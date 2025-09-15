class LibraryItem {
  int id;
  String title;

  LibraryItem(this.id, this.title);

  String getDetails() {
    return 'Id: ${this.id}\nTitle: ${this.title}';
  }
}

class Book extends LibraryItem{
  String author;

  Book(int id, String title, this.author) : super(id, title);

  @override
  String getDetails() {
    return '${super.getDetails()}\nAuthor: ${this.author}';
  }
}

class DVD extends LibraryItem{
  String director;

  DVD(int id, String title, this.director) : super(id, title);

  @override
  String getDetails() {
    return '${super.getDetails()}\nDirector: ${this.director}';
  }
}

void main() {
  var myBook = Book(1, 'Demons', 'Fyodor Dostoevsky');
  print(myBook.getDetails());

  var myDVD = DVD(2, 'Crazy Frog', 'idk');
  print(myDVD.getDetails());
}
