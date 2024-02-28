import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pamtion_mobile/screen/code_screen.dart';
import 'package:pamtion_mobile/screen/project_screen.dart';

Future<void> checkGithub(BuildContext context) async {
  try {
    // Github 로그인
    final GithubAuthProvider githubProvider = GithubAuthProvider();
    final UserCredential? userCredential =
    await FirebaseAuth.instance.signInWithProvider(githubProvider);

    if (userCredential != null) {
      // Firebase에 가입된 계정인지 확인
      final user = userCredential.user;
      final additionalUserInfo = userCredential.additionalUserInfo;

      if (user != null) {
        // `additionalUserInfo.isNewUser` 속성을 사용하여 로그인 여부 확인
        if (additionalUserInfo?.isNewUser ?? false) {
          // 처음 로그인
          print('처음 로그인입니다.');

          // 코드 스크린으로 이동
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => CodeScreen(),
            ),
          );
        } else {
          // 이미 로그인
          print('이미 로그인되었습니다.');

          // 프로젝트 스크린으로 이동
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ProjectScreen(),
            ),
          );
        }
      } else {
        // Firebase에 가입되지 않은 계정
        print('Firebase에 가입되지 않은 계정입니다.');

        // 다른 스크린으로 이동
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => CodeScreen(),
          ),
        );
      }
    } else {
      // 사용자가 Github 로그인 취소
      print('Github 로그인 취소');
    }
  } on FirebaseAuthException catch (e) {
    // Firebase 로그인 관련 오류 처리
    print('Firebase 로그인 오류: ${e.code}');
  }
}
