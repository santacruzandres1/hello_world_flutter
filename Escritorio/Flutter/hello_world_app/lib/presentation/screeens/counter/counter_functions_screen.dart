import 'package:flutter/material.dart';
//import 'package:hello_world_app/presentation/widgets/app_bar.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MyAppBarCustom(),
      appBar: AppBar(
        title: const Text('Counter Functions'),
        centerTitle: true,
        // backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.normal),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              setState(() {
                // Restar 1 al contador
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),
           const CustomButton(Icons.refresh_rounded),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;

  const CustomButton(
    this.icon, {
    super.key,
    // required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //otra forma de hacer que el boton sea circular
      shape: const StadiumBorder(),
      onPressed: () {},

      child: Icon(icon),
    );
  }
}
