import 'dart:io';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_app/profile/profilemain.dart';
import 'package:mental_health_app/profile/user.dart';
import 'package:mental_health_app/profile/user_preferences.dart';
import 'package:mental_health_app/profile/widget/appbar_widget.dart';
import 'package:mental_health_app/profile/widget/profile_widget.dart';
import 'package:mental_health_app/profile/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
    child: Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 24),
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {

              },
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Weight',
              text: user.weight,
              onChanged: (weight) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Age',
              text: user.age,
              onChanged: (weight) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Gender',
              text: user.gender,
              onChanged: (weight) {},
            ),
            const SizedBox(height: 24),
            MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 4),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileMain()),
                );
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Text('Save',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
              ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    ),
  );
}