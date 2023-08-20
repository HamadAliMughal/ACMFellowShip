import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: WidgetPlaygroundScreen(),
    );
  }
}

class WidgetPlaygroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 03'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  index++;
                  return ListTile(title: Text('List Item $index'));
                },
              ),
              Container(
                color: Colors.green,
                height: 100,
                child: const Center(
                  child: Text(
                    'Custom Container',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.alarm),
                  Icon(Icons.mood_bad),
                  Icon(Icons.sim_card_alert_sharp),
                  Icon(Icons.mood_sharp),
                  Icon(Icons.star),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.blueGrey, height: 50),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.yellow, height: 50),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(color: Colors.blue, height: 100, width: 100),
                  const Icon(Icons.layers, size: 50),
             
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.pink,
                child: Text(
                  'H',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(height: 20),
              TextEditor(),
              const SizedBox(height: 20),
              Image.asset('assets/image.jpg'),
              const SizedBox(height: 20),
              CounterIncrementer(),
              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}

class TextEditor extends StatefulWidget {
  const TextEditor({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TextEditorState createState() {
    return _TextEditorState();
  }
}

class _TextEditorState extends State<TextEditor> {
  String _inputText = '';

  void _updateText(String newText) {
    setState(() {
      _inputText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: _updateText,
          decoration: const InputDecoration(
            labelText: 'Enter Text',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 18, color: Colors.black),
            children: [
              const TextSpan(text: 'Input Text: '),
              TextSpan(
                text: _inputText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CounterIncrementer extends StatefulWidget {
  @override
  _CounterIncrementerState createState() => _CounterIncrementerState();
}

class _CounterIncrementerState extends State<CounterIncrementer> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter Value: $_counter',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.plus_one),
        ),
      ],
    );
  }
}

