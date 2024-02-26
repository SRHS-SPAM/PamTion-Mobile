import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential?> GithubLogin() async {
  // Create a new provider
  GithubAuthProvider githubProvider = GithubAuthProvider();

  return await FirebaseAuth.instance
      .signInWithProvider(githubProvider)
      .then((value) {
    print(value.user?.uid);
  }).onError((error, stackTrace) {
    print('error${error}');
  });
}
