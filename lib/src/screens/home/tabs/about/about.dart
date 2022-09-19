import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              // Image + short description
              Container(
                width: 70, 
                height: 70,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://cdna.artstation.com/p/assets/images/images/026/404/794/large/joe-martini-img-1115.jpg?1588698894"
                      ),
                    // fit: BoxFit.none,
                  ),
                    borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          );
  }
}