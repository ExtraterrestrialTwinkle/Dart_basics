import 'dart:math';

/// Преобразование целых чисел
///
/// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
int toBinary(int decimal) {
  if (decimal == 0) {
    return 0;
  }
  String buf = '';
  int d = decimal.abs();
  while (d > 0) {
    buf = (d % 2).toString() + buf;
    d = d ~/ 2;
  }
  if (decimal < 0) {
    // отрицательное число в прямом двоичном коде
    if (buf.length == 4) {
      buf = '1000' + buf;
    } else {
      while (buf.length % 4 != 3) {
        buf = '0' + buf;
      }
      buf = '1' + buf;
    }
  }
  return int.parse(buf);
}

// Перевод из прямого двоичного кода в десятичную систему
num toDecimal(String binary) {
  var array = List<String>.generate(binary.length, (index) => binary[binary.length - index - 1]);
  num buf = 0;
  // если в заданном двоичном числе не хватает битов до разряда - заполняем
  // нехватающие биты нулями - чтобы не принять первую значащую единицу за знаковый бит
  while (array.length % 4 != 0) {
    array.add('0');
  }
  for (int i = 0; i < array.length - 1; i++) {
    var digit = int.parse(array[i]);
    buf = digit * pow(2, i) + buf;
  }
  // если есть знаковый бит - то полученное число отрицательное
  if (array.last == '1') {
    buf = -buf;
  }
  return buf;
}
