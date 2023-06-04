import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget
{

  final List<Item> familyMembers = const [
    Item(
      sound: 'father.wav',
      jpName: 'Chichioya',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      sound: 'daughter.wav',
      jpName: 'Musume',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      sound: 'grand father.wav',
      jpName: 'Ojīsan',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      sound: 'mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      sound: 'grand mother.wav',
      jpName: 'Sobo',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Item(
      sound: 'older bother.wav',
      jpName: 'Nīsan',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      sound: 'older sister.wav',
      jpName: 'Ane',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      sound: 'son.wav',
      jpName: 'Musuko',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      sound: 'younger brohter.wav',
      jpName: 'otōto',
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      sound: 'younger sister.wav',
      jpName: 'Imōto',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: ListItem(
              item: familyMembers[index],
              color: Color(0xff558B37),
              itemType: 'family_members',
            ),
          );
        },
      ),
    );
  }
}