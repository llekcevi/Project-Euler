// By considering the terms in the Fibonacci sequence whose values do not exceed
// four million, find the sum of the even-valued terms.

class Fibonacci {
  List<int> allFib = [1, 2];
  int index = 2;
  List<int> evenFib = [];
  int evenFibSum = 0;

  //method that pushes ints in allFib
  void addAllFib() {
    while ((allFib[index - 1] + allFib[index - 2]) < 4000000) {
      allFib.add(allFib[index - 1] + allFib[index - 2]);
      index += 1;
    }
  }

  void makeEvenFib() {
    for (int i = 0; i < allFib.length; i++) {
      if (allFib[i] % 2 == 0) {
        evenFib.add(allFib[i]);
      }
    }
  }

  void totalEvenFib() {
    for (int i = 0; i < evenFib.length; i++) {
      evenFibSum += evenFib[i];
    }
  }
}

void main() {
  var fib = Fibonacci();

  fib.addAllFib();
  fib.makeEvenFib();
  fib.totalEvenFib();

  print("all fib is: ${fib.allFib}");
  print("even fib: ${fib.evenFib}");
  print("sum of even fibonacci numbers < 4000000: ${fib.evenFibSum}");
}
