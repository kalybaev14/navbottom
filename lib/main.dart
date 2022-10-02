import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index=0;
  final List<Widget> bodies = [
    Example(color: Colors.black,),
     Example(color: Colors.yellow,),
     Example(color: Colors.green,),
     Example(color: Colors.grey,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: bodies[_index]),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,  
      selectedFontSize: 14,
      selectedItemColor: Color(0xff22A2BD),
      unselectedItemColor: Color(0xffBDBDBD),
      unselectedFontSize: 12,
        currentIndex: _index,
        onTap: (index){
          _index=index;
          setState(() {
            
          });
        },
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/character_24px_selected.png',scale: 4,), label: 'Персонажи'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/location_24px.png',scale: 3,), label: 'Локации',),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/episode.png',scale: 4,), label: 'Эпизоды'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Settings.3.png',scale: 4,), label: 'Настройки'),
        ],
      ),
    );
  }
}
class Example extends StatefulWidget {
  Example({Key? key,required this.color}) : super(key: key,);
  final Color color;
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  void initState() {
    print('first widget');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: widget.color,
        ),
      ),
    );
  }
}