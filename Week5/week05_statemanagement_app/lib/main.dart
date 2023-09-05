import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Progress App',
      home: ChangeNotifierProvider(
        create: (context) => CheckboxState(),
        child: CheckboxApp(),
      ),
    );
  }
}

class CheckboxState extends ChangeNotifier {
  List<bool> checkboxes = List.generate(6, (index) => false);

  double get progress =>
      checkboxes.where((value) => value).length / checkboxes.length;

  void toggleCheckbox(int index) {
    checkboxes[index] = !checkboxes[index];
    notifyListeners();
  }
}

class CheckboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<CheckboxState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Progress App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ProgressBar:',
              style: TextStyle(fontSize: 24),
            ),
            LinearProgressIndicator(
              value: checkboxState.progress,
            ),
            SizedBox(height: 20),
            Text(
              'Checkboxes Checked: ${(checkboxState.progress * 100).toStringAsFixed(1)}%',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            for (int i = 0; i < checkboxState.checkboxes.length; i++)
              CheckboxListTile(
                title: Text('Checkbox $i'),
                value: checkboxState.checkboxes[i],
                onChanged: (isChecked) {
                  checkboxState.toggleCheckbox(i);
                },
              ),
          ],
        ),
      ),
    );
  }
}
