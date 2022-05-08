class MovieModel {
  final String imagePath;
  final int view;
  final String title;

  MovieModel({
    required this.imagePath,
    required this.title,
    required this.view,
  });
}

List movies = <MovieModel>[
  MovieModel(
    imagePath: 'assets/images/film5.jpg',
    title: 'ونوم',
    view: 1239,
  ),
  MovieModel(
    imagePath: 'assets/images/film4.jpg',
    title: 'جک ریچر',
    view: 2345,
  ),
  MovieModel(
    imagePath: 'assets/images/film3.jpg',
    title: 'پرستیژ',
    view: 1654,
  ),
  MovieModel(
    imagePath: 'assets/images/film2.jpg',
    title: 'جان کیو',
    view: 7453,
  ),
  MovieModel(
    imagePath: 'assets/images/film1.jpg',
    title: 'میلیونر زاغه نشین',
    view: 5653,
  ),
];



List serials = <MovieModel>[
  MovieModel(
    imagePath: 'assets/images/serial1.jpg',
    title: 'گاندو 2',
    view: 3245,
  ),
  MovieModel(
    imagePath: 'assets/images/serial2.jpg',
    title: 'گاندو 1',
    view: 12239,
  ),
  MovieModel(
    imagePath: 'assets/images/serial3.jpg',
    title: 'وضعیت سفید',
    view: 3453,
  ),
  MovieModel(
    imagePath: 'assets/images/serial4.jpg',
    title: 'سرجوخه',
    view: 2343,
  ),
  MovieModel(
    imagePath: 'assets/images/serial5.jpg',
    title: 'سرقت پول',
    view: 95343,
  ),
];


List childrenMovie = <MovieModel>[
  MovieModel(
    imagePath: 'assets/images/kodakan1.jpg',
    title: 'کلبه عموپورنگ',
    view: 3421,
  ),
  MovieModel(
    imagePath: 'assets/images/kodakan2.jpg',
    title: 'قصه های ریرا',
    view: 1243,
  ),
  MovieModel(
    imagePath: 'assets/images/kodakan3.jpg',
    title: 'فینگیلیا',
    view: 4536,
  ),
  MovieModel(
    imagePath: 'assets/images/kodakan4.jpg',
    title: 'تعمیرکاران',
    view: 2341,
  ),
  MovieModel(
    imagePath: 'assets/images/kodakan5.jpg',
    title: 'تام و جری',
    view: 8765,
  ),
];

