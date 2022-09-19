import 'package:flutter/material.dart';

class LittePost extends StatelessWidget {
  final String urlImage;
  final String title;
  const LittePost({Key? key, required this.urlImage, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: _width * 0.4,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            //Image
            Container(
              height: _height * 0.30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    urlImage
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
            // Text (title)
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: _width * 0.15, vertical: _height * 0.02),
              child: SizedBox(
                width: _width * 0.15,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87.withOpacity(1),
                    // wordSpacing: 2,
                    // letterSpacing: 1.5,
                  ),
                  maxLines: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
