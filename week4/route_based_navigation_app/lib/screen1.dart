import 'package:flutter/material.dart';
import 'package:route_based_navigation_app/screen2.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String _inputText = '';
    final List<String> imageList = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.png',
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                        CarouselSlider(
              items: imageList.map((imageUrl) {
                return Image.network(imageUrl, fit: BoxFit.cover);
              }).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (text) {
                setState(() {
                  _inputText = text;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter text',
              ),
            ),
            const SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  const TextSpan(text: 'Input Data: '),
                  TextSpan(
                    text: _inputText,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(data: _inputText),
                  ),
                );
              },
              child:  const Icon(Icons.arrow_forward),
            ),
             FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:  Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
