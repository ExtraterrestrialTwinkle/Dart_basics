/**
 * Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод,
 * который разбивает число на простые множители и возвращает их.
 */
int nod(int first, int second) {
  if (second == 0) {
    return first;
  } else if (first == second || first == 0) {
    return second;
  } else if (first > second) {
    return nod(second, first % second);
  } else {
    return nod(second, first);
  }
}

int nok(int first, int second) {
  if (first == 0 && second == 0) throw Exception('Division by zero!');
  return first ~/ nod(first, second) * second;
}
