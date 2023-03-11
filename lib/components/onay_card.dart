import 'package:flutter/material.dart';
import 'package:onay/data/card_class.dart';

class OnayCardLayot extends StatelessWidget {
  const OnayCardLayot({super.key, required this.theCard});
  final OnayCard theCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
      width: 360,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: theCard.backgroundColor,
      ),
      child: Row(children: [
        Container(
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(10))),
            width: 35,
            child: RotatedBox(
                quarterTurns: -1,
                child: Center(
                  child: Text(
                    theCard.type.toString().toUpperCase(),
                    style: const TextStyle(
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
                Text(
                  theCard.number.toString(),
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decorationThickness: 0),
                ),
                Column(
                  children: [
                    Text(
                      "${theCard.balance.toString()} Тг",
                      style: const TextStyle(
                          color: Colors.black,
                          decorationThickness: 0,
                          fontSize: 30),
                    ),
                    Text(
                      "~${(theCard.balance ~/ theCard.usingPrice)} поездок, Алматы",
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
