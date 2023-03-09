// ignore_for_file: sized_box_for_whitespace
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:onay/components/cards_navbar.dart';
import 'package:onay/components/footer_navbar.dart';
import 'components/main_card.dart';
import 'components/buttons.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => BalanceState(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.yellow),
        debugShowCheckedModeBanner: false,
        title: 'Onay',
        home: SafeArea(
          child: Container(
              padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              width: 360,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Column(
                children: [
                  CardsNavbar(),
                  MainCard(),
                  Buttons(),
                  SizedBox(
                    height: 60,
                  ),
                  FooterNavbar(),
                ],
              )),
        ));
  }
}

class BalanceState extends ChangeNotifier {
  double balance = 480;
  void deposit(amount) {
    balance += amount;
    notifyListeners();
  }
}
