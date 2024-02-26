import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/google_login.dart';


class GoogleButton extends StatefulWidget {

  const GoogleButton({
    super.key,
  });

  @override
  State<GoogleButton> createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoogleLogin();
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width - 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset('asset/img/google.png'),
                  width: 18,
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Google로 계속하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'nanumsqare',
                      fontSize: 20,
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
