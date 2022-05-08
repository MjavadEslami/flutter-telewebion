import 'package:flutter/material.dart';
import 'package:telewebion/model/slider_model.dart';
import 'package:telewebion/model/tv.dart';
import 'package:telewebion/screen/components/slider.dart';

class StreemScreen extends StatelessWidget {
  const StreemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _Sldier(),
              const SizedBox(
                height: 16,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisExtent: 110,
                      crossAxisSpacing: 0),
                  itemCount: tvChanels.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            (index + 1).toString(),
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          tvChanels[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(overflow: TextOverflow.ellipsis),
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class _Sldier extends StatefulWidget {
  const _Sldier({
    Key? key,
  }) : super(key: key);

  @override
  State<_Sldier> createState() => _SldierState();
}

final PageController _controller = PageController();

class _SldierState extends State<_Sldier> {
  @override
  Widget build(BuildContext context) {
    return SliderView(
      items: sliderLive,
      pageController: _controller,
    );
  }
}
