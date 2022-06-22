// By considering the terms in the Fibonacci sequence whose values do not exceed
// four million, find the sum of the even-valued terms.

import 'dart:io';

class Fibonacci {
  List<int> allFib = [1, 2];
  int index = 2;
  List<int> evenFib = [];
  List<int> oddFib = [];
  int FibSum = 0;
  int max = 0;
  set setMax(int x) => max = x;
  int get getMax => max;
  //method that makes a list of Fibonacci numbers less than x
  void allFibLessThanX() {
    while ((allFib[index - 1] + allFib[index - 2]) < max) {
      allFib.add(allFib[index - 1] + allFib[index - 2]);
      index += 1;
    }
  }

  //method that makes a list of even and odd Fibonacci numbers included in the list allFib
  void makeOddAndEvenFib() {
    for (int i = 0; i < allFib.length; i++) {
      if (allFib[i] % 2 == 0) {
        evenFib.add(allFib[i]);
      } else {
        oddFib.add(allFib[i]);
      }
    }
  }

  //method that adds up all the even Fibonacci numbers in the given list
  int totalFib(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      FibSum += list[i];
    }
    return 0;
  }
}

void main() {
  var fib = Fibonacci();
  print("Input max number");
  int max = int.parse(stdin.readLineSync()!);

  fib.setMax = max;
  fib.allFibLessThanX();
  fib.makeOddAndEvenFib();
  fib.totalFib(fib.oddFib);

  print("all fib is: ${fib.allFib}");
  print("even fib: ${fib.evenFib}");
  print("odd fib: ${fib.oddFib}");
  print("sum of odd fibonacci numbers < $max : ${fib.FibSum}");
}
