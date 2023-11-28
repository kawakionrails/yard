import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text(
        'Olá, mundo!',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Segunda Tela',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('yet another realtime database'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          // Adicione mais BottomNavigationBarItems conforme necessário
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
