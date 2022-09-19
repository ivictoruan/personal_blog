import 'package:flutter/material.dart';

class MostRecentPost extends StatelessWidget {
  const MostRecentPost({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){},
      child: Column(
        children: [ 
             // Post Image
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: _width * 0.28, vertical: _height * 0.04),
              child: Container(
                // width: 100,
                height: _height * 0.50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdna.artstation.com/p/assets/images/images/026/404/794/large/joe-martini-img-1115.jpg?1588698894"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Post Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.30),
              child: Text(
                "A inspiração Huxliana e como ela pode te ajudar a projetar e consolidar seu futuro na tecnologia.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87.withOpacity(1),
                ),
                maxLines: 3,
              ),
            ),
            // Post Description
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: _width * 0.35, vertical: _height * 0.02),
              child: Text(
                "Como planejar uma carreira a longo prazo num mercado/industria tão dinâmico como a tecnologia?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87.withOpacity(1),
                  wordSpacing: 2,
                  letterSpacing: 1.5,
                ),
                maxLines: 2,
              ),
            ),
        ],
      ),
    );
  }
}

