import 'package:flutter/material.dart';

class CardsNavbar extends StatelessWidget {
  const CardsNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              "My Cards",
              style: TextStyle(color: Colors.black),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Other Cards",
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }
}
