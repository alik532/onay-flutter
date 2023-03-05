import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(35))),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                )),
            OutlinedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(35))),
                onPressed: () {},
                child: const Icon(Icons.arrow_circle_right_rounded,
                    color: Colors.black)),
            OutlinedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(35))),
                onPressed: () {},
                child: const Icon(
                  Icons.history,
                  color: Colors.black,
                )),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(35))),
                onPressed: () {},
                child: const Icon(
                  Icons.qr_code,
                  color: Colors.black,
                )),
            OutlinedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(35))),
                onPressed: () {},
                child: const Icon(Icons.numbers, color: Colors.black)),
            OutlinedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(35))),
                onPressed: () {},
                child: const Icon(
                  Icons.my_library_books_rounded,
                  color: Colors.black,
                )),
          ],
        )
      ],
    );
  }
}
