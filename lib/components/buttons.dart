import 'package:flutter/material.dart';
import '../screens/deposit_screen.dart';
import 'package:camera/camera.dart';
import '../screens/camera_page.dart';

const iconList1 = [
  Icons.add,
  Icons.arrow_circle_right_rounded,
  Icons.history,
];

const iconList2 = [
  Icons.qr_code,
  Icons.numbers,
  Icons.my_library_books_rounded
];

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: iconList1
              .map((icon) => OutlinedButton(
                    style: primaryButtonStyles(),
                    onPressed: () async {
                      if (icon == Icons.add) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DepositScreen()));
                      }
                    },
                    child: Icon(icon, color: Colors.black),
                  ))
              .toList(),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: iconList2
              .map((icon) => OutlinedButton(
                    style: primaryButtonStyles(),
                    onPressed: () async {
                      if (icon == Icons.qr_code) {
                        await availableCameras().then(
                          (value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        CameraPage(cameras: value)));
                          },
                        );
                      }
                    },
                    child: Icon(icon, color: Colors.black),
                  ))
              .toList(),
        )
      ],
    );
  }
}

ButtonStyle primaryButtonStyles() =>
    ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(32)));
