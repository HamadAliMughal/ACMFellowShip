import 'dart:io';

class Num {
  int num = 10;
}

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

//String Tricks

  var nickname = 'Sonu';
  String myNickName = 'My Nickname is $nickname';
  print(myNickName);

  //Parsing Data type
  var intDataOne = int.parse('1');
  if (intDataOne == 1) {
    print('It\'s int');
  } else {
    print("it's a string");
  }

  //const type veriable and run-time-checking

  const constantVarInt = 22;
  const constantVarStr = "Hello I'm Constant";
  const constantVarBool = true;
  print(constantVarInt);
  print(constantVarStr);
  print(constantVarBool);

  print(constantVarInt.runtimeType);
  print(constantVarStr.runtimeType);
  print(constantVarBool.runtimeType);

  //OPERATORS

  int opr_num = 40 + 20;
  print('First declaration and assignment of OperatorInt: $opr_num');
  opr_num = opr_num + 20;
  opr_num = opr_num % 5;
  print('After Modulus of 5 OperatorInt: $opr_num');

  //OPERATORS RELATIONAL

  if (opr_num == 0) {
    print('Opr_num is now Zero');
    opr_num = 100;
  }

  //OPERATORS UNIARY

  opr_num++;
  print(opr_num);
  ++opr_num;
  print(opr_num);
  opr_num *= 2;
  print(opr_num);

  //Logical
  if (opr_num > 200 || opr_num < 250) {
    print('Its between 200-250');
  } else {
    print('not its not between 200-250');
    print(opr_num);
  }

  //Null Aware Operators
  var n1;
  var nullAwareCheckInt = n1?.num ?? 15;
  print(nullAwareCheckInt);

  //Ternary Operators
  var result = count1 % 2 == 0 ? 'Even' : 'odd';
  print(result + '  WHICH is   $count1');

  //Switch Statement

  switch (nullAwareCheckInt) {
    case 10:
      print('its not null');
      break;
    case 15:
      print('it was null but now assigned with $nullAwareCheckInt');
      break;
    default:
      print('its default');
  }
}
//In-Line Comment

/*
Block Comment
*/
