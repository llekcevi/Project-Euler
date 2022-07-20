import 'dart:io';

class Number {
  String n = "";
  set setN(String number) => n = number;

  isPalindrome() {
    List nList = n.split("");
    int nListLength = nList.length;
    bool lengthEven = nListLength.isEven;

    List firstHalf = [];
    List secondHalf = [];

    if (lengthEven) {
      firstHalf = nList.sublist(0, (nListLength / 2).round());
      secondHalf = nList.sublist((nListLength / 2).round(), nListLength);
    } else {
      int halfpointIndex = (nListLength / 2).floor();

      firstHalf = nList.sublist(0, halfpointIndex);
      secondHalf = nList.sublist(halfpointIndex + 1, nListLength);
    }

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
  num.isPalindrome();

  print(num.isPalindrome());
}
