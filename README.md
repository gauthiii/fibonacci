# fibonacci

Fibonacci Series which is a series that goes by 0, 1, 1, 2, 3, 5, 8, 13 ......

## Introduction

Package to print the Fibonacci Series and find the Nth number of a Fibonacci Series.

Example: Inputting 10 would print the series till 10. [0, 1, 1, 2, 3, 5, 8].

Fibonacci Series is basically a series where it starts with 0 and 1, and then each digit is the sum of the previous two number.

F(n) = F(n-1) + F(n-2) where n>=3.

It's a basic implementation of the printing the fibonacci series upto N numbers. To know more about this package, Visit here [github link](https://github.com/gauthiii/fibonacci). This package can also find the Nth number from the Fibonacci series.

For example: 4th index of the series is 2. So if you input 4, 2 would be the output.

<p>
<img src="https://github.com/gauthiii/fibonacci/assets/35861219/22fb5364-6618-44ce-806c-0c50379966ec" height="400">
  <img src="https://github.com/gauthiii/fibonacci/assets/35861219/80fe8304-af4f-4cc8-94ac-1c09e2d463c3" height="400">
  <img src="https://github.com/gauthiii/fibonacci/assets/35861219/be993134-58fc-4160-9afa-0a560797fc9d" height="400">
<br>
</p>

## Installation

```yaml
dependecies:
  fibonacci: 0.0.1
```

## Example

See `example/main.dart`

```dart
import 'package:fibonacci/fibonacci.dart';

void main() {

  

    var x = Fibonacci.printSeries(size: 5).toString();

    print(x); // prints : [0, 1, 1, 2, 3, 5]

    var y = Fibonacci.printValue(index: 5).toString();

    print(y); // prints : 3
}
```
