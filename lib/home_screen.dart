import 'package:flutter/material.dart';
import 'package:test_task_flutter/colors.dart';
import 'package:test_task_flutter/green_screen.dart';
import 'package:test_task_flutter/random_number_generator.dart';
import 'package:test_task_flutter/yellow_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const Key greenButton = Key('green_btn_key');
  static const Key yellowButton = Key('yellow_btn_key');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Стартовый экран'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

              key: const Key('green_btn_key'),
              style: ElevatedButton.styleFrom(backgroundColor: greenColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const GreenScreen()),
                );
              },
              child: const Text('зеленый'),
            ),
            ElevatedButton(
              key: const Key('yellow_btn_key'),
              style: ElevatedButton.styleFrom(backgroundColor: yellowColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        YellowScreen(generator: RandomNumberGeneratorImpl()),
                  ),
                );
              },
              child: const Text('желтый'),
            ),
          ],
        ),
      ),
    );
  }
}
