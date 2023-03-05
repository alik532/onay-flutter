import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainCard extends StatefulWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Balance();
}

class Balance extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(10))),
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "5572 96 10636 1400 8650",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decorationThickness: 0),
                ),
                Column(
                  children: [
                    Text(
                      "${Provider.of<double>(context).toString()} Тг",
                      style: const TextStyle(
                          color: Colors.black,
                          decorationThickness: 0,
                          fontSize: 30),
                    ),
                    Text(
                      "~${Provider.of<double>(context) ~/ 40} поездок, Алматы",
                      style: const TextStyle(
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
                fontSize: 27, color: Colors.black, decorationThickness: 0),
          ),
        ),
      ]),
    );
  }
}
