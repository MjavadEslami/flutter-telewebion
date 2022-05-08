import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telewebion/model/actors.dart';
import 'package:telewebion/them_color.dart';

class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/slide1.jpg'),
                    AspectRatio(
                      aspectRatio: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                DarkThemColor.blackColor,
                                Colors.transparent
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.center),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(CupertinoIcons.back))
                  ],
                ),
                Positioned(
                    bottom: -75,
                    right: 8,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/new1.jpg',
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16, top: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'منصور',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Row(
                                  children: [
                                    const Icon((CupertinoIcons.play)),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'مشاده آنلاین',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'فیلم "منصور " به کارگردانی "سیاوش سرمدی" درباره بخش هایی از زندگی "تیمسار منصورستاری" و ساخت اولین جنگده کاملا ایرانی است و ...',
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '+13',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Icon(
                    CupertinoIcons.calendar_circle,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '1398',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('دسته بندی : حانوادگی ، درام',
                  style: Theme.of(context).textTheme.caption),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.clock,
                    size: 16,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('104 دقیقه', style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: actors.length,
                  itemBuilder: (context, index) {
                    final double right = index == 0 ? 8 : 16;
                    final double left = index == actors.length - 1 ? 8 : 16;
                    return Padding(
                      padding: EdgeInsets.fromLTRB(right, 16, left, 16),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                actors[index].image,
                                width: 60,
                              )),
                              const SizedBox(height: 8,),
                          Text(
                            actors[index].name,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .apply(fontSizeFactor: 0.9),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ]),
        ),
      )),
    );
  }
}
