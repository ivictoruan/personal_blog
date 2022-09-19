import 'package:flutter/material.dart';
import 'package:personal_blog/src/screens/home/tabs/blog/widgets/most_recent_post.dart';

import '../../../../json/constant.dart';
import '../../../../widgets/footer.dart';
import 'custom_horizontal_scroll.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          const MostRecentPost(),
          // Divider
          const Divider(
            color: Colors.black,
            indent: 450,
            endIndent: 450,
            thickness: 2.5,
          ),
          // "Todas postagens"
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: _width * 0.30, vertical: _height * 0.02),
            child: Text(
              "Todos os artigos",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87.withOpacity(1),
              ),
            ),
          ),
          //  Imagens de postagens com descrição...
          const CustomHorizontalScroll(posts: posts),
          const Footer(),
        ],
      ),
    );
  }
}
