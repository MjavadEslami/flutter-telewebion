import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    Key? key,
  }) : super(key: key);
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Stack(
        clipBehavior: Clip.none, children: [
          Container(
            margin: const EdgeInsets.only(left: 8, right: 8),
            width: 35.0,
            height: 16.0,
            decoration: BoxDecoration(
              color: selected
                  ? Colors.red.withOpacity(0.5)
                  : Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          Positioned(
            top: -2,
            child: Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 35.0,
              child: AnimatedAlign(
                alignment:
                    selected ? Alignment.centerLeft : Alignment.centerRight,
                duration: const Duration(milliseconds: 600),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: selected ? Colors.red : Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
