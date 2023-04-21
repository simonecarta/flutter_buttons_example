import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter demo buttons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () => print("cliccato"),
            icon: const Icon(Icons.access_alarm),
          )
        ],
        foregroundColor: const Color.fromARGB(255, 70, 69, 69),
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 50,
        shadowColor: const Color.fromARGB(255, 233, 185, 28),
        toolbarOpacity: 0.5,
        toolbarHeight: 70,

        // centerTitle: true,

        // leading: Icon(Icons.add_ic_call),
        // leadingWidth: 80,
        // automaticallyImplyLeading: false,
      ),

      // drawer: Drawer(),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // TextButton(onPressed: () => print("click"), child: const Text("Text button")),
            // ElevatedButton(onPressed: () => print("cliccato elevated"), child: const Text ("Elevated Button")),
            // OutlinedButton(onPressed: () => print("cliccato Outlined"), child: const Text ("Outlined Button")),
            // TextButton.icon(
            //   onPressed: () {},
            //   icon: const Icon(Icons.access_alarm),
            //   label: const Text("text button icon"),
            //   ),

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text("Aggiungi al carrello"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(135, 255, 193, 7)),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                iconColor: MaterialStatePropertyAll(Colors.black38),
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color.fromARGB(255, 213, 128, 0).withOpacity(0.40);
                  }
                  return null;
                }),
              ),
            ),

            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart),
                label: const Text("Aggiungi al carrello 2"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 185, 184, 233),
                    foregroundColor: Color.fromARGB(66, 0, 0, 0),
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 50)))
          ],
        ),
      ),
    );
  }
}
