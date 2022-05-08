import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telewebion/screen/components/switch_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _Btn(
              icon: const Icon(
                CupertinoIcons.clock,
                size: 18,
              ),
              lable: 'ویدئو های مشاهده شده',
              onTap: () {},
            ),
            _Btn(
              icon: const Icon(
                CupertinoIcons.bookmark,
                size: 18,
              ),
              lable: 'لیست علاقه مندی ها',
              onTap: () {},
            ),
            Divider(
              color: Colors.grey.shade500,
            ),
            _Btn(
              icon: const Icon(
                CupertinoIcons.phone,
                size: 18,
              ),
              lable: 'تماس با ما',
              onTap: () {},
            ),
            _Btn(
              icon: const Icon(
                CupertinoIcons.hand_thumbsup,
                size: 18,
              ),
              lable: 'شبکه های اجتماعی',
              onTap: () {},
            ),
            Divider(
              color: Colors.grey.shade500,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.18,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Icon(
                      CupertinoIcons.light_max,
                      size: 18,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'صرفه جویی در مصرف اینترنت',
                          style: TextStyle(fontSize: 15),
                        ),
                        Expanded(
                          child: Text(
                            'با کاهش کیفیت ویدئوی پخش زنده، در مصرف اینترنت و شارژ باتری صرفه جویی می شود',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //_SwitchButton()
                  const CustomSwitch()
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade500,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.18,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Icon(
                      CupertinoIcons.moon_stars,
                      size: 18,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'حالت شب',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  //_SwitchButton()
                  CustomSwitch()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class _Btn extends StatelessWidget {
  final Icon icon;
  final String lable;
  final Function() onTap;
  const _Btn({
    Key? key,
    required this.icon,
    required this.lable,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.width * 0.15,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: icon,
            ),
            Text(
              lable,
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
