const list = [];                       //empty array for storing multiples of 3 or 5

for (i = 1; i < 1000; i++) {           // for loop that checks every number between 1 and 1000
  if (i % 3 === 0 || i % 5 === 0) {    // if a number is divisible by 3 or by 5 without the remainder it is added to the list
    list.push(i);                      // after the number is checked, it is incremented by one and loop checks the new number  
  }
}

let sumList = 0;                      // we declared a new variable that will hold the sum of all multiples in the list

for (i = 0; i < list.length; i++) {  // for loop goes through every element of the list and adds it to the final sum
  sumList += list[i];                // i starts at index 0 and stops at last element
}
