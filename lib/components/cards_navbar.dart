import 'package:flutter/material.dart';
import '../screens/other_cards.dart';
import '../main.dart';

class CardsNavbar extends StatelessWidget {
  const CardsNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const MyApp()));
            },
            child: const Text(
              "My Card",
              style: TextStyle(color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const OtherCards()));
            },
            child: const Text(
              "Other Cards",
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }
}
