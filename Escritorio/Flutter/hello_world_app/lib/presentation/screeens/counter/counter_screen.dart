import 'package:flutter/material.dart';
//import 'package:hello_world_app/presentation/widgets/app_bar.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MyAppBarCustom(),
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {

            },

          
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
            ),
            // Text(
            //(clickCounter == 1 || clickCounter == -1  ? 'Click' : 'Clicks' ),
            // style: const TextStyle(fontSize: 50),
            //Otra forma seria
            Text(
              'Click${clickCounter == 1 || clickCounter == -1 ? '' : 's'}',
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // Restar 1 al contador
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // Sumar 1 al contador
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
