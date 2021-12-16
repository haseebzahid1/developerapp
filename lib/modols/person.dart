class BooksData {
  String name;
  String job;
  String img;
  String clock;

  BooksData({
    required this.job,
    required this.name,
    required this.clock,
    required this.img,
  });
}

List<BooksData> continueReading = [
  BooksData(
    name: "Ball Will",
    job: "Software Developer",
    clock: "3:40",
    img: 'assets/images/p1.jpg',
  ),
  BooksData(
    name: "Andy Smith",
    job: "UI Designer",
    clock: "5:50",
    img: 'assets/images/p2.jpg',
  ),
  BooksData(
    name: "Julie Robert",
    job: "Software Tester",
    clock: "9:20",
    img: 'assets/images/p6.jpg',
  ),
  BooksData(
    name: "Creepy Story",
    job: "Software Tester",
    clock: "9:20",
    img: 'assets/images/p5.jpg',
  ),
  BooksData(
    name: "Cloe Suger",
    job: "Software Tester",
    clock: "9:20",
    img: 'assets/images/p3.jpg',
  ),
  BooksData(
    name: "Colid Story",
    job: "Software Tester",
    clock: "8:20",
    img: 'assets/images/p7.png',
  )
];
