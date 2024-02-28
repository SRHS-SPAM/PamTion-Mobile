import 'package:flutter/material.dart';
import 'package:pamtion_mobile/component/check_github.dart';

class GithubButton extends StatefulWidget {
  const GithubButton({
    super.key,
  });

  @override
  State<GithubButton> createState() => _GithubButtonState();
}

class _GithubButtonState extends State<GithubButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        checkGithub(
          context,
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 80,
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
                  child: Image.asset('asset/img/githublogo.png'),
                  width: 18,
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Github로 계속하기',
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
