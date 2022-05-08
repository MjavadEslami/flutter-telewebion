import 'package:flutter/material.dart';
import 'package:telewebion/helper/helper.dart';
import 'package:telewebion/model/clips.dart';
import 'package:telewebion/model/movie_model.dart';
import 'package:telewebion/model/slider_model.dart';
import 'package:telewebion/screen/components/slider.dart';
import 'package:telewebion/screen/movies_list.dart';
import 'package:telewebion/screen/vertical_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const _Slider(),
                  const _Banner(),
                  _ProposalTetewebion(
                    themeData: themeData,
                    lable: 'پیشنهاد تلوبیون',
                    movies: proposalTetewebion,
                    onTap: () {
                      navigatorPush(
                          context: context,
                          screen: const VerticlaMoviesList(
                            title: 'پیشنهاد تلوبیون',
                          ));
                    },
                  ),
                  _MoviesList(
                    themeData: themeData,
                    lable: 'فیلم',
                    movies: movies,
                    onTap: () {
                      navigatorPush(
                          context: context,
                          screen: const VerticlaMoviesList(
                            title: 'فیلم',
                          ));
                    },
                  ),
                  _MoviesList(
                    themeData: themeData,
                    lable: 'سریال',
                    movies: serials,
                    onTap: () {
                      navigatorPush(
                          context: context,
                          screen: const VerticlaMoviesList(
                            title: 'سریال',
                          ));
                    },
                  ),
                  _MoviesList(
                    themeData: themeData,
                    lable: 'کودکان',
                    movies: childrenMovie,
                    onTap: () {
                      navigatorPush(
                          context: context,
                          screen: const VerticlaMoviesList(
                            title: 'کودکان',
                          ));
                    },
                  ),
                  _ProposalTetewebion(
                    themeData: themeData,
                    lable: 'فوتبال ایران',
                    movies: iranianFootball,
                    onTap: () {
                      navigatorPush(
                          context: context,
                          screen: const VerticlaMoviesList(
                            title: 'فوتبال ایران',
                          ));
                    },
                  ),
                  _ProposalTetewebion(
                    themeData: themeData,
                    lable: 'فوتبال جهان',
                    movies: worldFootball,
                    onTap: () {
                      navigatorPush(
                          context: context,
                          screen: const VerticlaMoviesList(
                            title: 'فوتبال جهان',
                          ));
                    },
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            const _AppBar(),
          ],
        ),
      ),
    );
  }
}

class _Slider extends StatefulWidget {
  const _Slider({
    Key? key,
  }) : super(key: key);

  @override
  State<_Slider> createState() => _SliderState();
}

final PageController _controller = PageController();

class _SliderState extends State<_Slider> {
  @override
  Widget build(BuildContext context) {
    return SliderView(
      items: sliderHome,
      pageController: _controller,
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.078,
        color: Colors.black.withOpacity(0.8),
        child: Row(children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/Telewebion-Logo.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () => navigatorPush(
                        context: context,
                        screen: const MoviesList(
                          title: 'فیلم',
                        )),
                    child: const Text('فیلم')),
                TextButton(
                    onPressed: () => navigatorPush(
                        context: context,
                        screen: const MoviesList(
                          title: 'سریال',
                        )),
                    child: const Text('سریال')),
                TextButton(
                    onPressed: () => navigatorPush(
                        context: context,
                        screen: const MoviesList(
                          title: 'کارتون',
                        )),
                    child: const Text('کارتون')),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class _MoviesList extends StatelessWidget {
  final String lable;
  final ThemeData themeData;
  final List movies;
  final Function() onTap;
  const _MoviesList(
      {Key? key,
      required this.lable,
      required this.themeData,
      required this.movies,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(lable),
              TextButton(onPressed: onTap, child: const Text('مشاهده همه'))
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.white.withOpacity(.15),
                  highlightColor: Colors.grey.withOpacity(.2),
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 175,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(movies[index].imagePath),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          movies[index].title,
                          style: themeData.textTheme.bodyText2!
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          movies[index].view.toString() + ' بازدید',
                          style: themeData.textTheme.caption!
                              .copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ))
      ],
    );
  }
}

class _ProposalTetewebion extends StatelessWidget {
  final String lable;
  final ThemeData themeData;
  final List movies;
  final Function() onTap;
  const _ProposalTetewebion(
      {Key? key,
      required this.lable,
      required this.themeData,
      required this.movies,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(lable),
              TextButton(onPressed: onTap, child: const Text('مشاهده همه'))
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.white.withOpacity(.15),
                  highlightColor: Colors.grey.withOpacity(.2),
                  onTap: onTap,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 175,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(movies[index].imagePath),
                            ),
                            Positioned(
                              top: 6,
                              right: 4,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  movies[index].time + ' دقیقه',
                                  style: themeData.textTheme.caption!.copyWith(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(proposalTetewebion[index].slug),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          movies[index].title,
                          style: themeData.textTheme.caption!
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          movies[index].view.toString() + ' بازدید',
                          style: themeData.textTheme.caption!
                              .copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ))
      ],
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset('assets/images/banner.jpg')));
  }
}
