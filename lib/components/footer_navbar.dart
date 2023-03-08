import 'package:flutter/material.dart';

class FooterNavbar extends StatelessWidget {
  const FooterNavbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15))),
            onPressed: () {},
            child: const Icon(Icons.abc_rounded))
      ],
    );
  }
}
