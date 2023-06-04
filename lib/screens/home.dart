import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';
import '../components/category.dart';
import 'colors_page.dart';
import 'family_members_page.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Language Learning App",
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.jpeg",
                width: 200,
                height: 200,
              ),
              Category(
                text: "Numbers",
                color: Color(0xffEF9235),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NumbersPage()));
                },
              ),
              Category(
                text: "FamilyMembers",
                color: Color(0xff558B37),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FamilyMembersPage()));
                },
              ),
              Category(
                text: "Colors",
                color: Color(0xff79359F),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColorsPage()));
                },
              ),
              Category(
                text: "Phrases",
                color: Color(0xff50ADC7),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhrasesPage()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}