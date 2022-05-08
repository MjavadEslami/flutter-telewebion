import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Theme(
        data: themeData.copyWith(
            inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.white.withOpacity(0.05),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        )),
        child: SafeArea(
          child: Scaffold(
            body: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.search),
                        hintText: 'جستجو'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
