class SliderModel {
  final String imageUrl;
  final String title;

  SliderModel({required this.imageUrl, required this.title});
}

List sliderHome = <SliderModel>[
  SliderModel(imageUrl: 'assets/images/slide1.jpg', title: 'منصور'),
  SliderModel(imageUrl: 'assets/images/slide2.jpg', title: 'خودخواسته'),
  SliderModel(imageUrl: 'assets/images/slide3.jpg', title: 'برف بی صدا می بارد'),
  SliderModel(imageUrl: 'assets/images/slide4.jpg', title: 'آتش در گلستان'),
  SliderModel(imageUrl: 'assets/images/slide5.jpg', title: 'پلاک 13'),
  SliderModel(imageUrl: 'assets/images/slide7.jpg', title: 'فراخوان شرکت در مسابقه آب و آتش'),
];

List sliderLive = <SliderModel>[
  SliderModel(imageUrl: 'assets/images/sliderF.jpg', title: 'پخش زنده فوتبال مسجدسلیمان | پرسپولیس ، 18:00'),
  SliderModel(imageUrl: 'assets/images/sliderF2.jpg', title: 'پخش زنده فوتبال استقلال | نفت آبادان ، ساعت 20:00'),
];
