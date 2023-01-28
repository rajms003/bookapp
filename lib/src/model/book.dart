class Book {
  String? imgUrl;
  String? name;
  String? author;
  num? score;
  num? review;
  num? view;
  List<String>? type;
  String? desc;
  Book(
    this.imgUrl,
    this.name,
    this.author,
    this.score,
    this.review,
    this.view,
    this.type,
    this.desc
  );

  static List<Book> generateRecommendedBook() {
    return [
      Book(
        'assets/images/book1.jpg',
        'Nichelle Clarke Crime Thrillers',
        'Lyndee Walker',
        4.4,
        104.3,
        2.7,
        ['Crime', 'Thriller', 'Mystery'],
        'When two rookie cops are killed in a fiery crash near Richmond, Virginia, crime reporter Nichelle Clarke is sent in to investigate.',
      ),
      Book(
        'assets/images/book2.jpg',
        'Fear No Truth',
        'Lyndee Walker',
        4.4,
        104.3,
        2.7,
        ['Crime', 'Thriller', 'Mystery'],
        'When two rookie cops are killed in a fiery crash near Richmond, Virginia, crime reporter Nichelle Clarke is sent in to investigate.',
      ),
      Book(
        'assets/images/book3.jpg',
        'The War Between Us',
        'Lyndee Walker',
        4.4,
        104.3,
        2.7,
        ['Crime', 'Thriller', 'Mystery'],
        'When two rookie cops are killed in a fiery crash near Richmond, Virginia, crime reporter Nichelle Clarke is sent in to investigate.',
      ),
      Book(
        'assets/images/book1.jpg',
        'Nichelle Clarke Crime Thrillers',
        'Lyndee Walker',
        4.4,
        104.3,
        2.7,
        ['Crime', 'Thriller', 'Mystery'],
        'When two rookie cops are killed in a fiery crash near Richmond, Virginia, crime reporter Nichelle Clarke is sent in to investigate.',
      ),
    ];
  }
}