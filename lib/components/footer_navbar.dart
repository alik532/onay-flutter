import 'package:flutter/material.dart';

class FooterNavbar extends StatelessWidget {
  const FooterNavbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "item",
          style: TextStyle(
              color: Colors.black, fontSize: 18, decorationThickness: 0),
        ),
        Text(
          "item",
          style: TextStyle(
              color: Colors.black, fontSize: 18, decorationThickness: 0),
        ),
        Text(
          "item",
          style: TextStyle(
              color: Colors.black, fontSize: 18, decorationThickness: 0),
        ),
        Text(
          "item",
          style: TextStyle(
              color: Colors.black, fontSize: 18, decorationThickness: 0),
        )
      ],
    );
  }
}
