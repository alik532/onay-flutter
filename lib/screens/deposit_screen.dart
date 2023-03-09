import 'package:flutter/material.dart';
import 'package:onay/components/main_card.dart';
import 'package:provider/provider.dart';
import 'package:onay/main.dart';
import '../styles/app_colors.dart' as app_colors;

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
    return SafeArea(
        child: Form(
            key: _formKey,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: app_colors.primaryLight,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                title: const Text("Deposit"),
              ),
              body: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Choose an ONAY card to deposit",
                        style: TextStyle(fontSize: 20, height: 2),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: MainCard(),
                      ),
                      TextFormField(
                        controller: myController,
                        validator: (value) {
                          if (value is! int ||
                              value == null ||
                              int.parse(value) <= 200) {
                            return "Please enter valid amount of cash";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Minimal value: 200тг \n\nComission: 10т"),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 163, vertical: 20)),
                                backgroundColor: MaterialStatePropertyAll(
                                    app_colors.primaryLight)),
                            onPressed: () {
                              _formKey.currentState!.validate();
                              if (int.parse(myController.text) >= 200) {
                                Provider.of<BalanceState>(context,
                                        listen: false)
                                    .deposit(int.parse(myController.text) - 10);
                              }
                            },
                            child: const Text(
                              "Deposit",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            )),
                      )
                    ]),
              ),
            )));
  }
}
