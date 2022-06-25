import 'package:flutter/material.dart';
import 'package:mental_health_app/gad7_survey/surveymain.dart';
import 'package:mental_health_app/graph/graph.dart';
import 'package:mental_health_app/student_survey/studentsurveymain.dart';
import 'package:mental_health_app/util/emoticons.dart';
import 'package:mental_health_app/util/mood_input.dart';
import 'package:mental_health_app/profile/profilemain.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String title = 'MoodInput';
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //hi user!
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      /*Text('24 June, 2022',
                        style: TextStyle(color: Colors.white),
                      ),*/
                    ],
                  ),

                  //profile
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileMain()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey.shade100,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              //how do you feel
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '오늘 기분 어떠세요?',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              //emoticons row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //happy
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Happy', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/happy.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Happy',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //sad
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Sad', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/sad.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Sad',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //tired
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Tired', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/tired.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Tired',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //worried
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Worried', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/worried.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Worried',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //excited
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Excited', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/excited.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excited',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //emoticons row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //calm
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Calm', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/calm.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Calm',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //bored
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Bored', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/bored.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bored',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //annoyed
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Annoyed', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/annoyed.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Annoyed',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //angry
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Angry', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/angry.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Angry',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),

                  //stressed
                  GestureDetector(
                    onTap: ()async {
                      final action = await MoodInput.yesCancelDialog(context, 'Stressed', '저장하시겠습니까 ?');
                      if(action == DialogsAction.yes) {
                        setState(() => tappedYes = true);
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    child: Column(
                      children: [
                        Emoticons(
                          emoticon: 'assets/emoticons/stressed.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Stressed',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),

              //menu title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              //anxiety survey
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SurveyMainPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 310,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade200,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                            'GAD-7 설문',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //student survey
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentSurveyMainPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 310,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          '학생 정서 행동 특성 검사',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //stats
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GraphPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 310,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen.shade200,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          'Statistics',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
