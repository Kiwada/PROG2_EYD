import 'dart:io';

void main() {
  int cases = int.parse(stdin.readLineSync() ?? '0');

  while (cases-- > 0) {
    int number = int.parse(stdin.readLineSync() ?? ' 0');

    print(ledsCounter(number));
  }
}

int ledsCounter(int number) {
  const digits = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];
  int leds = 0;

  do {
    leds += digits[number % 10];
    number = number ~/ 10;
  } while (number > 0);

  return leds;
}
