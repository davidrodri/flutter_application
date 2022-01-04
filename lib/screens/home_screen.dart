import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const tamanoFuente = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 15,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Clicks Counter',
              style: tamanoFuente,
            ),
            Text(
              '0',
              style: tamanoFuente,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.adb_sharp),
        onPressed: () {
          print('Hello World');
        },
      ),
    );
  }
}
