import 'package:flutter/material.dart';

import 'tabs/about/about.dart';
import 'tabs/blog/blog.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final double _height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: 
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "Tech Blog com Victor Ruan",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            // physics: BouncingScrollPhysics(),
            // mouseCursor: MaterialStateMouseCursor.clickable,
            // isScrollable: false,
            
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 2.0,
                color: Colors.black,
              ),
              insets: EdgeInsets.symmetric(horizontal: 100.0),
            ),
            // Blog, Sobre, Links and Projetos
            tabs: [
              Tab(
                child: Text(
                  "BLOG",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "SOBRE",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "LINKS",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "PROJETOS",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              Blog(),
              About(),
              Center(
                child: Text("Links"),
              ),
              Center(
                child: Text("Projetos"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
