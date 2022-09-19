import 'package:flutter/material.dart';
import 'package:personal_blog/src/screens/home/tabs/blog/widgets/litte_post.dart';

class CustomHorizontalScroll extends StatelessWidget {
  final List posts;

  const CustomHorizontalScroll({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
            4,
            (index) =>
                LittePost(urlImage: posts[index]["urlImage"], title: posts[index]["title"])),
      ),
    );
  }
}
