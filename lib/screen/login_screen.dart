import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pamtion_mobile/component/github_button.dart';
import 'package:pamtion_mobile/component/google_button.dart';
import 'package:pamtion_mobile/const/color.dart';
import 'package:pamtion_mobile/screen/code_screen.dart';
import 'package:pamtion_mobile/screen/project_screen.dart';
import 'package:pamtion_mobile/screen/team_name_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 102,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/img/pamtion_icon.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '환영합니다!',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: 'nanumsqare',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      GoogleButton(),
                      SizedBox(
                        height: 20.0,
                      ),
                      GithubButton(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => CodeScreen(),
                              ),
                            );
                          },
                          child: Text('testButton'))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 8,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut',
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 8,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

