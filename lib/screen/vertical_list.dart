import 'package:flutter/material.dart';
import 'package:telewebion/model/clips.dart';
import 'package:telewebion/them_color.dart';

class VerticlaMoviesList extends StatelessWidget {
  final String title;
  const VerticlaMoviesList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              foregroundColor: DarkThemColor.whiteColor,
              backgroundColor: DarkThemColor.blackColor,
              title: Text(
                title,
                style: themeData.textTheme.headline6,
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: proposalTetewebion.length,
                itemBuilder: (context, index) {
                  final double top = index == 0 ? 0 : 10;
                  return Padding(
                    padding: EdgeInsets.fromLTRB(10, top, 10, 10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Stack(
                            children: [
                              Image.asset(proposalTetewebion[index].imagePath,
                                  width: 180),
                              Positioned(
                                bottom: 2,
                                right: 2,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    proposalTetewebion[index].time + ' دقیقه',
                                    style: themeData.textTheme.caption!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(proposalTetewebion[index].slug),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                proposalTetewebion[index].title,
                                style: themeData.textTheme.caption!
                                    .copyWith(overflow: TextOverflow.ellipsis),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                proposalTetewebion[index].view.toString() +
                                    ' بازدید',
                                style: themeData.textTheme.caption!
                                    .copyWith(fontSize: 11),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
