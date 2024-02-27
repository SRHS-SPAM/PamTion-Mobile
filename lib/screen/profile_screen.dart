import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pamtion_mobile/screen/profile_setting_screen.dart';

import '../const/color.dart';

class ProFileScreen extends StatelessWidget {
  const ProFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('프로필'),
      ),
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-160,
                          child: Image.asset(
                            'asset/img/profile.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '닉네임',
                          style: TextStyle(
                            fontFamily: 'nanumsqare',
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '연락처가 표시될 자리',
                          style: TextStyle(
                            fontFamily: 'nanumsqare',
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ProFileSetting()));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Center(
                              child: Text(
                                '프로필 편집',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
