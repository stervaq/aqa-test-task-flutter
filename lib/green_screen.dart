import 'package:flutter/material.dart';
import 'package:test_task_flutter/colors.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: 'back_btn_icon',
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: greenColor,
        title: const Text('Зеленый экран'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: greenColor,
        child: const Text(
          'Зеленый экран',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
