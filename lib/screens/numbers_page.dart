import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';

import '../models/item.dart';

class NumbersPage extends StatelessWidget
{
  final List<Item> numbers = const [
    Item(sound: "number_one_sound.mp3", image: "assets/images/numbers/number_one.png", jpName: "ichi", enName: "one"),
    Item(sound: "number_two_sound.mp3", image: "assets/images/numbers/number_two.png", jpName: "Ni", enName: "two"),
    Item(sound: "number_three_sound.mp3", image: "assets/images/numbers/number_three.png", jpName: "San", enName: "three"),
    Item(sound: "number_four_sound.mp3", image: "assets/images/numbers/number_four.png", jpName: "Shi", enName: "four"),
    Item(sound: "number_five_sound.mp3", image: "assets/images/numbers/number_five.png", jpName: "Go", enName: "five"),
    Item(sound: "number_six_sound.mp3", image: "assets/images/numbers/number_six.png", jpName: "Roku", enName: "six"),
    Item(sound: "number_seven_sound.mp3", image: "assets/images/numbers/number_seven.png", jpName: "Sebun", enName: "seven"),
    Item(sound: "number_eight_sound.mp3", image: "assets/images/numbers/number_eight.png", jpName: "hachi", enName: "eight"),
    Item(sound: "number_nine_sound.mp3", image: "assets/images/numbers/number_nine.png", jpName: "Kyū", enName: "nine"),
    Item(sound: "number_ten_sound.mp3", image: "assets/images/numbers/number_ten.png", jpName: "Jū", enName: "ten"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index)
        {
          return ListItem(
            itemType: "numbers",
            item: numbers[index],
            color: Color(0xffEF9235),
          );
        },
      ),
    );
  }
}