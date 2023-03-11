import 'package:flutter/material.dart';

class OnayCard {
  double balance = 0;
  bool isPrimary = false;
  bool isMine = false;
  late String number;
  late String type;
  late double usingPrice;
  Color backgroundColor;

  OnayCard(
      {required this.number,
      required this.type,
      required this.usingPrice,
      required this.backgroundColor});
}
