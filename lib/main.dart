// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:onay/components/cards_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Onay',
        home: SafeArea(
          child: Container(
              padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              width: 360,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  const CardsNavbar(),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                    width: 360,
                    height: 180,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 166, 230, 83),
                    ),
                    child: Row(children: [
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10))),
                          width: 35,
                          child: const RotatedBox(
                              quarterTurns: -1,
                              child: Center(
                                child: Text(
                                  "СТУДЕНЧЕСКАЯ",
                                  style: TextStyle(
                                    decorationThickness: 0,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ))),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5572 96 10636 1400 8650",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    decorationThickness: 0),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "360.00 Tг",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      decorationThickness: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "~9 поездки, Алматы",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decorationThickness: 0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              )
                            ]),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        width: 100,
                        child: const Text(
                          ">",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 27,
                              color: Colors.black,
                              decorationThickness: 0),
                        ),
                      ),
                    ]),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(35))),
                              onPressed: () {},
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                              )),
                          OutlinedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(35))),
                              onPressed: () {},
                              child: const Icon(
                                  Icons.arrow_circle_right_rounded,
                                  color: Colors.black)),
                          OutlinedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(35))),
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
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(35))),
                              onPressed: () {},
                              child: const Icon(
                                Icons.qr_code,
                                color: Colors.black,
                              )),
                          OutlinedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(35))),
                              onPressed: () {},
                              child: const Icon(Icons.numbers,
                                  color: Colors.black)),
                          OutlinedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(35))),
                              onPressed: () {},
                              child: const Icon(
                                Icons.my_library_books_rounded,
                                color: Colors.black,
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "item",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            decorationThickness: 0),
                      ),
                      Text(
                        "item",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            decorationThickness: 0),
                      ),
                      Text(
                        "item",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            decorationThickness: 0),
                      ),
                      Text(
                        "item",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            decorationThickness: 0),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
