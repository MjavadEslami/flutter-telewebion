import 'package:flutter/material.dart';
import 'package:telewebion/helper/helper.dart';
import 'package:telewebion/model/films_model.dart';
import 'package:telewebion/screen/movie.dart';

class MoviesList extends StatelessWidget {
  final String title;
  const MoviesList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(
          body: CustomScrollView(slivers: [
            SliverAppBar(
              pinned: true,
              title: Text(
                title,
                style: themeData.textTheme.headline6,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _MoviesList(
                    title: '2021',
                    movies: news,
                    onTap: () {},
                  ),
                  _MoviesList(
                    title: 'ایرانی',
                    movies: irani,
                    onTap: () {},
                  ),
                  _MoviesList(
                    title: 'خارجی',
                    movies: hindi,
                    onTap: () {},
                  ),
                  _MoviesList(
                    title: 'اکشن',
                    movies: kore,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ]),
        )));
  }
}

class _MoviesList extends StatelessWidget {
  final String title;
  final List movies;
  final Function() onTap;
  const _MoviesList({
    Key? key,
    required this.title,
    required this.movies,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              TextButton(onPressed: onTap, child: const Text('مشاهده همه'))
            ],
          ),
        ),
        SizedBox(
          height: 310,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final double right = index == 0 ? 16 : 6;
              final double left = index == movies.length - 1 ? 16 : 6;
              return Padding(
                padding: EdgeInsets.fromLTRB(left, 4, right, 4),
                child: InkWell(
                    onTap: () {
                      navigatorPush(context: context, screen: const Movie());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            movies[index].imageUrl,
                            width: 160,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          movies[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 15),
                        )
                      ],
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}
