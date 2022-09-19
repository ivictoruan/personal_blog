import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'personal_blog_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const PersonalBlogApp());
}
