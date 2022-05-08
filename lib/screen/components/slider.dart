import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderView extends StatefulWidget {
  final List items;
  final PageController pageController;
  const SliderView(
      {Key? key, required this.items, required this.pageController})
      : super(key: key);

  @override
  State<SliderView> createState() => SliderViewState();
}


class SliderViewState extends State<SliderView> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        children: [
          PageView.builder(
            controller: widget.pageController,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              return Image.asset(
                widget.items[index].imageUrl,
                fit: BoxFit.cover,
              );
            },
            onPageChanged: (int page) {
              setState(() {
                selectedPage = page;
              });
            },
          ),
          Positioned(
            bottom: 4,
            right: 0,
            left: 0,
            child: Center(
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: widget.pageController,
                    count: widget.items.length,
                    axisDirection: Axis.horizontal,
                    effect: WormEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 8,
                        dotHeight: 8,
                        strokeWidth: 1.5,
                        dotColor: Colors.white.withOpacity(0.6),
                        activeDotColor: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(widget.items[selectedPage].title)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
