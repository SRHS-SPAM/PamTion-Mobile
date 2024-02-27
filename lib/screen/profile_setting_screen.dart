import 'package:flutter/material.dart';

import '../const/color.dart';

class ProFileSetting extends StatelessWidget {
  const ProFileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('프로필 편집'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              '저장',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width - 160,
                              child: Image.asset(
                                'asset/img/profile.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width - 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  '사진 수정',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              height: 350,
                              width: MediaQuery.of(context).size.width - 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('이름'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          120,
                                      height: 30,
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'nanumsqare',
                                        ),
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('표시 이름'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          120,
                                      height: 30,
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'nanumsqare',
                                        ),
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('연락처'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          120,
                                      height: 30,
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        decoration: InputDecoration(
                                          hintText: 'Discord ID',
                                          hintStyle: TextStyle(
                                            color: Colors.grey[500],
                                            fontFamily: 'nanumsqare',
                                            fontSize: 15,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}
