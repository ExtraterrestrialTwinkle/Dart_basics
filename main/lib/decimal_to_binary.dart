import 'dart:math';

/**
 * Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
 */
int toBinary(int decimal) {
  String buf = '';
  while (decimal > 0) {
    buf = (decimal % 2).toString() + buf;
    decimal = decimal ~/ 2;
  }
  return int.parse(buf);
}

num toDecimal(String binary) {
  var array = List<String>.generate(binary.length, (index) => binary[binary.length - index - 1]);
  num buf = 0;
  for(int i = 0; i < array.length; i++) {
    var digit = int.parse(array[i]);
    buf = digit * pow(2, i) + buf;
  }
  return buf;
}