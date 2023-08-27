import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final String data;

  Screen2({required this.data});

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
          
            GestureDetector(
              onTap: _toggleExpansion,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: _isExpanded ? 200.0 : 100.0,
                height: _isExpanded ? 200.0 : 100.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    widget.data,
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                
                ),
              ),
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
