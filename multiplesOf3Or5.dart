class Multiples {
  List<int> divisibleThreeAndFive = [];
  int sumDivisible = 0;

  void divisibleToList() {
    for (int i = 1; i < 1000; i++) {
      // for loop that checks every number between 1 and 1000
      if (i % 3 == 0 || i % 5 == 0) {
        // if a number is divisible by 3 or by 5 without the remainder it is added to the list
        divisibleThreeAndFive.add(
            i); // after the number is checked, it is incremented by one and loop checks the new number
      }
    }
  }

  void addDivisible() {
    for (int i = 0; i < divisibleThreeAndFive.length; i++) {
      // for loop goes through every element of the list and adds it to the final sum
      sumDivisible += divisibleThreeAndFive[
          i]; // i starts at index 0 and stops at last element
    }
  }
}

void main() {
  var multi = Multiples();
  multi.divisibleToList();
  multi.addDivisible();
  print(multi.sumDivisible);
}
