import 'package:flutter/material.dart';
import 'package:fibonacci/fibonacci.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fibonacci',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String x = "";
  String y = "Enter a number N";

  TextEditingController con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fibonacci Sequence'),
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: _getColorFromHex("#8E150D"),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                    child: Text(
                  y,
                  style: const TextStyle(
                      fontFamily: "Alfa",
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ))),
            Container(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(children: [
                  SelectableText(
                    x,
                    style: const TextStyle(
                        fontFamily: "Alfa",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(height: 30),
                ])),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  minLines: 1,
                  maxLines: null,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontFamily: "Alfa",
                    fontSize: 18,
                    color: Colors.black,
                    //fontWeight: FontWeight.bold
                  ),
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.5),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: "Mono",
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 29, 24, 24)),
                    hintText: 'Enter your Message',
                  ),
                  controller: con,
                )),
            Container(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            setState(() {
                              y = "Fibonacci Series upto ${con.text.trim()} :";
                              x = Fibonacci.printSeries(
                                      size: int.parse(con.text.trim()))
                                  .toString();
                            });
                          },
                          child: const Text("Display series till N"),
                        )),
                    Container(height: 20),
                    SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            setState(() {
                              y = "The ${con.text.trim()}${(int.parse(con.text.trim()) == 1) ? "st" : (int.parse(con.text.trim()) == 2) ? "nd" : (int.parse(con.text.trim()) == 3) ? "rd" : "th"} Fibonacci number is";
                              x = Fibonacci.printValue(
                                      index: int.parse(con.text.trim()))
                                  .toString();
                            });
                          },
                          child: const Text("Find the Nth number"),
                        )),
                    Container(height: 20),
                    SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            setState(() {
                              x = "";
                              y = "Enter a number N";
                              con.clear();
                            });
                          },
                          child: const Text("Reset"),
                        )),
                  ]),
            ),
            Container(height: 30),
            const Center(
                child: SelectableText(
                    "Package created By: Gauthiii's Applications",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            Container(height: 30),
          ],
        ),
      ),
    );
  }
}

_getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";

    return Color(int.parse("0x$hexColor"));
  }

  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
}
