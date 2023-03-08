import 'package:flutter/material.dart';
import 'package:onay/components/main_card.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
          body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8),
            child: Column(children: <Widget>[
              const Text("Choose an ONAY card to deposit"),
              const MainCard(),
              TextFormField(
                controller: myController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter amount of cash";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      print(myController.text);
                    },
                    child: const Text("Deposit")),
              )
            ]),
          ),
        ));
  }
}
