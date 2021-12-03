import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _firstvalue = false;
  bool _secondvalue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                const Text(
                  'Checkbox with header and subtitle:',
                ),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 4:30 AM everyday'),
                  subtitle: const Text('Ringing after 12 hours'),
                  value: _firstvalue,
                  onChanged: (bool? value) {
                    setState(() {
                      _firstvalue = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 5:00 AM everyday'),
                  subtitle: const Text('Ringing after 12 hours'),
                  value: _secondvalue,
                  onChanged: (bool? value) {
                    setState(() {
                      _secondvalue = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
