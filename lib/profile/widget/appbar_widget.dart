import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health_app/pages/dashboard.dart';
import 'package:mental_health_app/profile/themes.dart';
import 'package:mental_health_app/profile/user_preferences.dart';

AppBar buildAppBar(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  final icon = CupertinoIcons.moon_stars;
  var clr = Colors.white;

  if (isDarkMode){
    clr = Colors.white;
  }else{
    clr = Colors.black87;
  }
  return AppBar(
    leading: BackButton(
      color: clr,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text('User Profile'),
    titleTextStyle: TextStyle(
        color: clr,
        fontSize: 18,
        fontWeight: FontWeight.bold,),
    centerTitle: true,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(icon),
          color: clr,
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
            final switcher = ThemeSwitcher.of(context);
            switcher.changeTheme(theme: theme);
          },
        ),
      ),
    ],
  );
}