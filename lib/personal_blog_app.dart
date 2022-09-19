import 'package:flutter/material.dart';

import 'src/screens/home/home.dart';

// import 'src/screens/root_app.dart';

class PersonalBlogApp extends StatelessWidget {
  const PersonalBlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Victor Ruan",
      // home: const RootApp(),
      home: const Home(),
      theme: ThemeData(
        // primaryColor: Colors.grey,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.black,
            ),
      ),
    );
  }
}
