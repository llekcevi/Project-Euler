import 'dart:io';

class Number {
  String n = "";
  set setN(String number) => n = number;

  List nList = [];
  int nListLength = 0;
  bool lengthEven = true;

  List firstHalf = [];
  List secondHalf = [];
  String halfpoint = "";

  void splitNumber() => nList = n.split("");
  void calculateListLength() => nListLength = nList.length;
  bool lengthOddOrEven() => lengthEven = nListLength.isEven;

  void splitInTheMiddle() {
    if (lengthEven) {
      firstHalf = nList.sublist(0, (nListLength / 2).round());
      secondHalf = nList.sublist((nListLength / 2).round(), nListLength);
    } else {
      int halfpointIndex = (nListLength / 2).floor();
      halfpoint = nList[halfpointIndex];

      firstHalf = nList.sublist(0, halfpointIndex);
      secondHalf = nList.sublist(halfpointIndex + 1, nListLength);
    }
  }

  isPalindrome() {
    List secondHalfReversed = secondHalf.reversed.toList();

    for (int index = 0; index < firstHalf.length; index++) {
      if (firstHalf[index] == secondHalfReversed[index]) {
        continue;
      } else
        return false;
    }
    return true;
  }
}

void main() {
  var num = Number();
  //num.n = "123";
  print("Input an integer to check whether is is a palindrome:");
  int number = int.parse(stdin.readLineSync()!);

  num.setN = number.toString();
  num.splitNumber();
  num.calculateListLength();
  num.lengthOddOrEven();
  num.splitInTheMiddle();
  num.isPalindrome();

  print(num.nList);
  print(num.nListLength);
  print(num.lengthEven);
  print(num.firstHalf);
  print(num.secondHalf);
  print(num.halfpoint);
  print(num.isPalindrome());
}
