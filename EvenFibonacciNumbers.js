let fib = [1, 2];
let index = 2;

while ((fib[index - 1] + fib[index - 2]) < 4000000) {
    fib.push(fib[index - 1] + fib[index - 2]);
    index += 1;
}
console.log(fib)

let fibEven = [];

for (let i = 0; i < fib.length; i++) {
    if (fib[i] % 2 == 0) { fibEven.push(fib[i]); }
}
console.log(fibEven);

let fibEvenSum = 0;
for (let i = 0; i < fibEven.length; i++) {
    fibEvenSum += fibEven[i]
}
console.log(fibEvenSum);
