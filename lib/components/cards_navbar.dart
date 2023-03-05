import 'package:flutter/material.dart';

class CardsNavbar extends StatefulWidget {
  const CardsNavbar({Key? key}) : super(key: key);

  @override
  Balance createState() => Balance();
}

class Balance extends State<CardsNavbar> {
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
              style: TextStyle(color: Color.fromARGB(255, 2, 2, 2)),
            )),
      ],
    );
  }
}
