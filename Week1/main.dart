import 'dart:io';

void main() {
  print("Hello");
  stdout.writeln('What is your name: ?');
  String? name = stdin.readLineSync();
  print('My Name is $name');

  //Data Types

  int count1 = 100;
  var count2 = 200;
  print('count1 : $count1  and  count2: $count2');

  double _double1 = 100.2;
  var _double2 = 20.3;
  print('Double 1 : $_double1 and  Double2: $_double2');

  String str_1 = 'Hello Hamad Ali Mughal';
  var str_2 = 'Hello Maadi ';
  print('String 1 : $str_1  and String 2: $str_2');

  dynamic dyn_1 = 'I am a String Now';
  print('Dynamic 1: $dyn_1');
  dyn_1 = 235;
  print('I am now Integer : $dyn_1');
}
//In-Line Comment

/*
Block Comment
*/

