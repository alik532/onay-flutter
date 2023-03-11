import 'package:flutter/material.dart';
import '../components/onay_card.dart';
import '../data/cards_list.dart';
import '../components/cards_navbar.dart';

class OtherCards extends StatelessWidget {
  const OtherCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(10, 63),
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            CardsNavbar()
          ])),
      body: Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, indx) {
                return OnayCardLayot(
                  theCard: cards[indx],
                );
              })),
    );
  }
}
