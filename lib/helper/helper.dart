import 'package:flutter/material.dart';

navigatorPush({context, screen}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
