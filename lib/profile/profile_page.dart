import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_app/profile/user.dart';
import 'package:mental_health_app/profile/edit_profile_page.dart';
import 'package:mental_health_app/profile/user_preferences.dart';
import 'package:mental_health_app/profile/widget/appbar_widget.dart';
import 'package:mental_health_app/profile/widget/button_widget.dart';
import 'package:mental_health_app/profile/widget/numbers_widget.dart';
import 'package:mental_health_app/profile/widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 24),
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
              ),
              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 24),
              NumbersWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(),
      )
    ],
  );
}